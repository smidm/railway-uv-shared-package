#!/usr/bin/env bash
set -euo pipefail
exec uv run --no-sync -m uvicorn app.main:app --host 0.0.0.0 --port "${PORT:-8000}"
