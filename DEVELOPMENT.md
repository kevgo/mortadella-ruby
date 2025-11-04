# Developer guidelines

- set up local environment: `bundle install`
- run all tests: `rake` (or `rake default`)
  - run linters: `rake lint`
  - auto-fix all issues: `rake fix`
  - run tests only: `rake features`

## Release a new version to RubyGems

- in a branch:
  - update CHANGELOG.md
  - search and replace all occurrences of `1.1.0`
  - run `bundle install`
  - ship this branch
- push a new version to Rubygems: `rake release`
