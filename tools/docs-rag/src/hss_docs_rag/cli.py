from __future__ import annotations

import argparse
import json
from dataclasses import asdict

from .config import Settings
from .indexer import rebuild_index, search_docs


def main() -> None:
    parser = argparse.ArgumentParser(description="Manage the High School Story docs RAG index.")
    subparsers = parser.add_subparsers(dest="command", required=True)

    rebuild_parser = subparsers.add_parser("rebuild", help="Rebuild the documentation index.")
    rebuild_parser.add_argument("--json", action="store_true", help="Emit JSON output.")

    search_parser = subparsers.add_parser("search", help="Search the documentation index.")
    search_parser.add_argument("query", help="Natural-language query.")
    search_parser.add_argument("--top-k", type=int, default=None, help="Number of matches to return.")
    search_parser.add_argument("--json", action="store_true", help="Emit JSON output.")

    args = parser.parse_args()
    settings = Settings.from_env()

    if args.command == "rebuild":
        result = rebuild_index(settings)
        if args.json:
            print(json.dumps(result, indent=2))
            return
        print(f"Rebuilt collection {result['collection']} with {result['documents']} documents and {result['nodes']} nodes.")
        return

    if args.command == "search":
        hits = [asdict(hit) for hit in search_docs(settings, args.query, args.top_k)]
        if args.json:
            print(json.dumps(hits, indent=2, ensure_ascii=False))
            return
        for index, hit in enumerate(hits, start=1):
            score = "n/a" if hit["score"] is None else f"{hit['score']:.4f}"
            print(f"[{index}] {hit['path']} score={score}")
            print(hit["text"][:800])
            print()
        return

    raise RuntimeError(f"Unsupported command: {args.command}")
