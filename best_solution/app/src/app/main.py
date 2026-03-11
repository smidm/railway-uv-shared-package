from fastapi import FastAPI

from common import shared_message

app = FastAPI(title="Railway Local Package Test")


@app.get("/")
def root() -> dict[str, str]:
    return {"message": shared_message()}
