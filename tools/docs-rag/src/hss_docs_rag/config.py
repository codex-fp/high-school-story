from __future__ import annotations

import os
from dataclasses import dataclass
from pathlib import Path


def _discover_repo_root() -> Path:
    current = Path.cwd().resolve()
    for candidate in (current, *current.parents):
        if (candidate / ".git").exists() and (candidate / "docs").exists():
            return candidate
    raise RuntimeError("Could not determine repository root from current working directory.")


@dataclass(frozen=True)
class Settings:
    repo_root: Path
    doc_paths: tuple[Path, ...]
    qdrant_url: str
    collection_name: str
    embed_model: str
    embed_base_url: str
    top_k: int
    state_dir: Path

    @classmethod
    def from_env(cls) -> "Settings":
        repo_root = Path(os.getenv("HSS_DOCS_RAG_REPO_ROOT", _discover_repo_root())).resolve()
        raw_doc_paths = os.getenv("HSS_DOCS_RAG_DOC_PATHS", "docs,_bmad-output")
        doc_paths = tuple(
            (repo_root / entry.strip()).resolve()
            for entry in raw_doc_paths.split(",")
            if entry.strip()
        )
        return cls(
            repo_root=repo_root,
            doc_paths=doc_paths,
            qdrant_url=os.getenv("HSS_DOCS_RAG_QDRANT_URL", "http://127.0.0.1:6334"),
            collection_name=os.getenv("HSS_DOCS_RAG_COLLECTION", "high_school_story_docs"),
            embed_model=os.getenv("HSS_DOCS_RAG_EMBED_MODEL", "bge-m3:latest"),
            embed_base_url=os.getenv("HSS_DOCS_RAG_EMBED_BASE_URL", "http://127.0.0.1:11434"),
            top_k=int(os.getenv("HSS_DOCS_RAG_TOP_K", "5")),
            state_dir=(repo_root / ".docs-rag").resolve(),
        )
