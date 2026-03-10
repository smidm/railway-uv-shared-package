FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /workspace

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir uv

COPY common /workspace/common
COPY app /workspace/app

RUN uv pip install --system /workspace/common /workspace/app

EXPOSE 8000

CMD ["sh", "-c", "uv run --no-project -- python -m uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}"]
