features:  # runs all feature tests
	@bundle exec cucumber --format progress
.PHONY: features

help:   # prints all make targets
	@cat Makefile | grep '^[^ ]*:' | grep -v '.PHONY' | grep -v help | sed 's/:.*#/#/' | column -s "#" -t

lint:  # runs all linters
	@bundle exec rubocop

test: lint features  # runs all tests
