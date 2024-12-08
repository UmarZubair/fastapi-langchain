.PHONY: help install run shell test format lint clean check docker-build docker-run export-requirements

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install:
	pipenv install

dev:
	pipenv install --dev

run:
	pipenv run uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload

shell:
	pipenv shell

test:
	pipenv run pytest

format:
	pipenv run black .

lint:
	pipenv run flake8 .

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	find . -type d -name "dist" -exec rm -rf {} +

check: format lint

docker-build:
	docker build -t fastapi-langchain-template .

docker-run:
	docker run -p 8000:8000 --name fastapi-container fastapi-langchain-template

docker-stop:
	docker stop fastapi-container
	docker rm fastapi-container

export-requirements:
	pipenv requirements > requirements.txt
