from fastapi import FastAPI
import uvicorn


def create_app():
    app = FastAPI()

    @app.get("/")
    def read_root():
        return {"message": "Hello, FastAPI"}

    @app.get("/items/{item_id}")
    def read_item(item_id: int, query_param: str = None):
        return {"item_id": item_id, "query_param": query_param}

    return app

def main():
    uvicorn.run("app.main:create_app", host="localhost", port=8080, reload=True, workers=2)

if __name__ == "__main__":
    main()
