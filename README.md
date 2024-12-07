# FastAPI Langchain Template

## Setup and Run Locally

### 1. **Using Pipenv (Python Virtual Environment)**

```bash
# Install dependencies
make install

# Run the FastAPI app
make run

# Activate virtual environment shell
pipenv shell
```

### 2. **Using Docker**

```bash
# Build the Docker image
make docker-build

# Run the Docker container
make docker-run
```

### Accessing the API Docs

You can access the Swagger UI at [http://localhost:8000/docs](http://localhost:8000/docs).


## Available Makefile Commands

- `make run` - Run the FastAPI app.
- `make shell` - Activate the virtual environment shell.
- `make test` - Run the tests.
- `make format` - Format the code using `black`.
- `make lint` - Lint the code using `flake8`.
- `make clean` - Clean up bytecode files and temporary files.
- `make docker-build` - Build the Docker image.
- `make docker-run` - Run the Docker container.
- `make export-requirements` - Generate `requirements.txt`.
