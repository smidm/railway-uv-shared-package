#!/usr/bin/env bash
set -euo pipefail

exec uv sync --locked --no-dev --no-editable --package app
