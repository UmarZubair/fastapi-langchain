# FastAPI Langchain Template

## Setup and Run Locally

### 1. **Using Pipenv (Python Virtual Environment)**

- Install dependencies:
  ```bash
  make install
  ```

- Run the FastAPI app:
  ```bash
  make run
  ```

- Open the application in your browser at [http://localhost:8000](http://localhost:8000).

- The virtual environment shell can be opened by:
  ```bash
  make shell
  ```

### 2. **Using Docker**

- Build the Docker image:
  ```bash
  make docker-build
  ```

- Run the Docker container:
  ```bash
  make docker-run
  ```

- The app will be accessible at [http://localhost:8000](http://localhost:8000).

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
