FROM python:3.10

RUN pip3 install poetry

WORKDIR /app

COPY pyproject.toml ./

RUN poetry install --no-root

COPY todo todo

CMD ["poetry", "run", "flask", "--app", "todo", "run", "--host", "0.0.0.0", "--port", "6400"]