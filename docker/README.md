# Docker Railway Example

This variant uses Dockerfiles instead of Railpack/uv workspace for deployment.

Structure:
- `app` (service)
- `app2` (service)
- `common` (shared local package)

Each Dockerfile copies both the service package and `common`, then installs both with `uv pip`.

Railway deployment expectation:
- Environment: `docker`
- `app` service uses `build.builder=DOCKERFILE`, `build.dockerfilePath=app/Dockerfile`
- `app2` service uses `build.builder=DOCKERFILE`, `build.dockerfilePath=app2/Dockerfile`
- Services deploy from GitHub repo `smidm/railway-uv-shared-package` with root directory `/docker`.
- If overriding `deploy.startCommand`, wrap it in `sh -c` so `${PORT}` expands correctly.
