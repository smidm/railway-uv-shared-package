# Broken Counterexample

This directory is an intentionally broken setup for Railway monorepo deploys.

It contains only independent packages:
- `app`
- `app2`
- `common`

`app` and `app2` each use a local relative UV source:
- `common = { path = "../common" }`

There is intentionally no top-level workspace management here:
- no root `pyproject.toml`
- no root `uv.lock`
- no root `railway.json`

Why it breaks on Railway:
- when deploying `app` or `app2` from a narrowed root directory, `../common` is outside that service root and cannot be resolved consistently in the build context.
