# Railway uv local package test (Railpack monorepo)

This repository demonstrates using local Python package dependencies with `uv`:

- `common`: shared package with one function
- `app`: FastAPI app that imports and returns the shared function output
- `app2`: second FastAPI app reusing the same `common` package

The local dependency is configured in `app/pyproject.toml`:

```toml
[tool.uv.sources]
common = { workspace = true }
```

Local run:

```bash
uv sync
uv run uvicorn app.main:app --reload
```

Or run app2:

```bash
uv run uvicorn app2.main:app --reload
```

Railway setup:

- root `railway.json` sets `build.builder = RAILPACK`
- root `railway.json` dispatches by `RAILWAY_SERVICE_NAME` to app-local scripts:
  - `app/build.sh`, `app/start.sh`
  - `app2/build.sh`, `app2/start.sh`
