from __future__ import annotations

from mcp.server.fastmcp import FastMCP

from .config import Settings
from .indexer import search_docs


mcp = FastMCP("hss-docs-rag")


@mcp.tool()
def search_documentation(query: str, top_k: int = 5) -> dict:
    """Search repository documentation in docs/ and _bmad-output/."""
    settings = Settings.from_env()
    hits = search_docs(settings, query=query, top_k=top_k)
    return {
        "query": query,
        "top_k": top_k,
        "results": [
            {
                "path": hit.path,
                "score": hit.score,
                "source_group": hit.source_group,
                "excerpt": hit.text[:1200],
            }
            for hit in hits
        ],
    }


def main() -> None:
    mcp.run()
