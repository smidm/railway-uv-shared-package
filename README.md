# railway-uv-shared-package

Minimal test monorepo for Railway deployments with shared local Python packages.

## Directories

- `ugly/`: working Railpack + uv workspace solution (root workspace + lockfile + railway.json dispatch).
- `elegant_but_broken/`: cleaner layout attempt that demonstrates failure with local relative shared dependency in isolated service roots.
- `docker/`: Docker-based solution for the same app/app2/common setup.

## Services

- `app`: FastAPI service returning a message from `common`.
- `app2`: second FastAPI service, also uses `common`.
- `common`: shared local Python package.

## Railway Environments

- `ugly`: working Railpack/uv workspace deployment.
- `broken`: failure reproduction for local relative dependency behavior.
- `docker`: Dockerfile-based deployment.
