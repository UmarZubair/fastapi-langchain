from fastapi import FastAPI
from app.controllers.user_controller import router as user_router
from app.controllers.item_controller import router as item_router

app = FastAPI(title="FastAPI Langchain Template", version="1.0.0")

app.include_router(user_router, prefix="/users", tags=["User Operations"])

app.include_router(item_router, prefix="/items", tags=["Item Operations"])
