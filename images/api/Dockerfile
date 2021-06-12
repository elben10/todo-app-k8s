FROM python:3.8-slim

WORKDIR /app/

# Install Poetry
RUN pip install poetry && \
    poetry config virtualenvs.create false

# Copy poetry.lock* in case it doesn't exist in the repo
COPY ./src/api/pyproject.toml ./src/api/poetry.lock* /app/

RUN mkdir src && \
    touch src/__init__.py && \
    poetry install --no-dev

COPY ./src/api/ /app/

COPY images/api/scripts/gunicorn_conf.py /gunicorn_conf.py

CMD ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "-c", "/gunicorn_conf.py", "src.main:app"]