# Development commands using UV

# Install dependencies and set up the project
install:
    uv sync
    uv pip install -e .

# Run linting
lint:
    uv run ruff check . && uv run ruff format --check .

# Run linting with auto-fix
lint-fix:
    uv run ruff check --fix . && uv run ruff format .

# Format code
format:
    uv run ruff format .

type-check:
    uv run mypy src

# Run tests (optionally specify a test path or flags)
test *args:
    uv run pytest {{args}}

# Run tests with coverage
test-cov:
    uv run pytest --cov