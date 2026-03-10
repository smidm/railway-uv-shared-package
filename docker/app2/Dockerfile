FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /workspace

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir uv

COPY common /workspace/common
COPY app2 /workspace/app2

RUN uv pip install --system /workspace/common /workspace/app2

EXPOSE 8000

CMD ["sh", "-c", "uv run --no-project -- python -m uvicorn app2.main:app --host 0.0.0.0 --port ${PORT:-8000}"]
