all: test

test:
	bash test.sh

lint:
	bash lint.sh

format:
	isort -y $(find feed -name "*.py"|xargs echo) $(find tests -name "*.py"|xargs echo)
	black -l 79 feed
	black -l 79 tests
