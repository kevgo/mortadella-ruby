features:  # runs all feature tests
	@bundle exec cucumber --format progress
.PHONY: features

lint:  # runs all linters
	@bundle exec rubocop

test: lint features  # runs all tests
