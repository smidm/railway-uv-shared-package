# Docker Railway Example

This variant uses Dockerfiles instead of Railpack/uv workspace for deployment.

Structure:
- `app` (service)
- `app2` (service)
- `common` (shared local package)

Each Dockerfile copies both the service package and `common`, then installs both via pip.

Railway deployment expectation:
- Environment: `docker`
- `app` service uses `build.builder=DOCKERFILE`, `build.dockerfilePath=app/Dockerfile`
- `app2` service uses `build.builder=DOCKERFILE`, `build.dockerfilePath=app2/Dockerfile`
- Deploy from `docker/` as build root.
