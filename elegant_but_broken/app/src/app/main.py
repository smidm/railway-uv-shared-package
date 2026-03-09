from fastapi import FastAPI

from common import shared_message

app = FastAPI(title="Broken Local Relative Dependency Test - app")


@app.get("/")
def root() -> dict[str, str]:
    return {"message": f"app says: {shared_message()}"}
