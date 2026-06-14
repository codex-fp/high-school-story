from __future__ import annotations

from dataclasses import dataclass
import json
from pathlib import Path
from typing import Iterable

from llama_index.core import StorageContext, VectorStoreIndex
from llama_index.core.node_parser import SentenceSplitter
from llama_index.core.schema import Document, NodeWithScore
from llama_index.embeddings.ollama import OllamaEmbedding
from llama_index.vector_stores.qdrant import QdrantVectorStore
from qdrant_client import QdrantClient

from .config import Settings


ALLOWED_SUFFIXES = {".md", ".txt"}
SKIP_PARTS = {".obsidian", ".git", "build", ".docs-rag"}


@dataclass(frozen=True)
class SearchHit:
    path: str
    score: float | None
    text: str
    source_group: str


def _build_embedding(settings: Settings) -> OllamaEmbedding:
    return OllamaEmbedding(
        model_name=settings.embed_model,
        base_url=settings.embed_base_url,
    )


def _build_client(settings: Settings) -> QdrantClient:
    settings.state_dir.mkdir(parents=True, exist_ok=True)
    return QdrantClient(url=settings.qdrant_url)


def _iter_doc_files(settings: Settings) -> Iterable[Path]:
    for doc_root in settings.doc_paths:
        if not doc_root.exists():
            continue
        for path in sorted(doc_root.rglob("*")):
            if not path.is_file():
                continue
            if path.suffix.lower() not in ALLOWED_SUFFIXES:
                continue
            if any(part in SKIP_PARTS for part in path.parts):
                continue
            yield path


def load_documents(settings: Settings) -> list[Document]:
    documents: list[Document] = []
    for path in _iter_doc_files(settings):
        relpath = path.relative_to(settings.repo_root).as_posix()
        text = path.read_text(encoding="utf-8")
        parent_name = path.parts[len(settings.repo_root.parts)]
        documents.append(
            Document(
                text=text,
                metadata={
                    "file_path": relpath,
                    "source_group": parent_name,
                    "file_name": path.name,
                },
            )
        )
    return documents


def _build_index(settings: Settings) -> VectorStoreIndex:
    client = _build_client(settings)
    _require_collection(client, settings)
    vector_store = QdrantVectorStore(
        client=client,
        collection_name=settings.collection_name,
    )
    return VectorStoreIndex.from_vector_store(
        vector_store=vector_store,
        embed_model=_build_embedding(settings),
    )


def rebuild_index(settings: Settings) -> dict[str, int | str]:
    documents = load_documents(settings)
    client = _build_client(settings)
    if client.collection_exists(settings.collection_name):
        client.delete_collection(settings.collection_name)

    vector_store = QdrantVectorStore(
        client=client,
        collection_name=settings.collection_name,
    )
    storage_context = StorageContext.from_defaults(vector_store=vector_store)
    transformations = [SentenceSplitter(chunk_size=1024, chunk_overlap=150)]
    index = VectorStoreIndex.from_documents(
        documents,
        storage_context=storage_context,
        transformations=transformations,
        embed_model=_build_embedding(settings),
        show_progress=True,
    )
    result = {
        "collection": settings.collection_name,
        "documents": len(documents),
        "nodes": client.count(settings.collection_name, exact=True).count,
    }
    (settings.state_dir / "last-rebuild.json").write_text(
        json.dumps(result, indent=2) + "\n",
        encoding="utf-8",
    )
    return result


def search_docs(settings: Settings, query: str, top_k: int | None = None) -> list[SearchHit]:
    index = _build_index(settings)
    retriever = index.as_retriever(similarity_top_k=top_k or settings.top_k)
    nodes = retriever.retrieve(query)
    return [_node_to_hit(node) for node in nodes]


def _node_to_hit(node: NodeWithScore) -> SearchHit:
    metadata = node.node.metadata or {}
    return SearchHit(
        path=str(metadata.get("file_path", "unknown")),
        score=node.score,
        text=node.node.get_content().strip(),
        source_group=str(metadata.get("source_group", "unknown")),
    )


def _require_collection(client: QdrantClient, settings: Settings) -> None:
    if client.collection_exists(settings.collection_name):
        return
    raise RuntimeError(
        f"Collection {settings.collection_name!r} does not exist yet. "
        "Run `uv run --project tools/docs-rag hss-docs-rag-index rebuild` first."
    )
