# backend/Dockerfile
FROM python:3.10.7

WORKDIR /app

COPY app/ /app

RUN pip install --no-cache-dir -r /app/requirements.txt

COPY ./app /app

# Local development key set
ENV GOOGLE_APPLICATION_CREDENTIALS=/app/local-auth.json 

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
