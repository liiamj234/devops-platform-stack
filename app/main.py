from fastapi import FastAPI
from prometheus_client import Counter, generate_latest
from starlette.responses import Response


app = FastAPI()

REQUEST_COUNT = Counter("app_requests_total", "Total requests")


@app.get("/")
def root():
    REQUEST_COUNT.inc()
    return {"message": "DevOps Platform Stack running"}


@app.get("/health")
def health():
    return {"status": "ok"}


@app.get("/metrics")
def metrics():
    return Response(generate_latest(), media_type="text/plain")
# temp