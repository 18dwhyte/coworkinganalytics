
FROM python:3.9-slim-buster


WORKDIR /app


ENV DB_USERNAME=postgres \
    DB_NAME="coworking-analytics" \
    PYTHONUNBUFFERED=1

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


COPY . /app

COPY analytics/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5153

ENV NAME coworking-analytics

CMD ["python", "app.py"]
