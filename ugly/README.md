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

- repository root directory on Railway: `/ugly`
- each app has its own Railway config:
  - `app/railway.json`
  - `app2/railway.json`
- each service should use its own config file via CLI:
  - `railway service link app && railway up --path-as-root app`
  - `railway service link app2 && railway up --path-as-root app2`
