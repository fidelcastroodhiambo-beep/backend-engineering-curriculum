.PHONY: setup format lint test smoke check

setup:
	npm --prefix starters/typescript-api install
	python3 -m pip install --upgrade pip
	python3 -m pip install -r starters/python-api/requirements-dev.txt

format:
	npm --prefix starters/typescript-api run format
	python3 -m ruff format starters/python-api
	gofmt -w starters/go-service

lint:
	npm --prefix starters/typescript-api run lint
	python3 -m ruff check starters/python-api
	gofmt -l starters/go-service | tee /tmp/gofmt.out
	@test ! -s /tmp/gofmt.out

test:
	npm --prefix starters/typescript-api test
	PYTHONPATH=starters/python-api python3 -m pytest starters/python-api/tests -q
	go test ./starters/go-service/...

smoke:
	npm --prefix starters/typescript-api run smoke
	python3 starters/python-api/smoke.py
	go run starters/go-service/cmd/service/main.go --smoke

check: format lint test smoke
