.PHONY: install scrape serve test lint format docker-build

install:
	pip install -r requirements-dev.txt
	pip install -e .

scrape:
	product-pipeline scrape

serve:
	product-pipeline serve --reload

test:
	pytest -v

lint:
	ruff check .

format:
	ruff format .
	ruff check --fix .

docker-build:
	docker build -t product-data-pipeline .
