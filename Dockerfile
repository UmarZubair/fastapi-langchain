FROM python:3.11-slim

WORKDIR /src

COPY Pipfile /src/
COPY Pipfile.lock /src/

RUN pip install pipenv
RUN pipenv lock -r > requirements.txt
RUN pip install -r requirements.txt

COPY . /src/

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
