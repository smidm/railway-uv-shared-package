#!/usr/bin/env bash
set -euo pipefail
exec uv run --no-sync -m uvicorn app2.main:app --host 0.0.0.0 --port "${PORT:-8000}"
