# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = "mortadella"
  s.version       = "1.2.0"
  s.authors       = ["Kevin Goslar"]
  s.email         = ["kevin.goslar@gmail.com"]
  s.summary       = "Build Cucumber-compatible data tables programmatically"
  s.description   = "Mortadella makes it easy to programmatically build data tables for " \
                    "Cucumber testing. Supports both horizontal (row-based) and vertical " \
                    "(key-value) table formats with powerful features like column filtering " \
                    "and field deduplication."
  s.homepage      = "https://github.com/kevgo/mortadella-ruby"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.7"

  s.metadata["rubygems_mfa_required"] = "true"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/kevgo/mortadella-ruby"
  s.metadata["changelog_uri"] = "https://github.com/kevgo/mortadella-ruby/blob/main/CHANGELOG.md"
  s.metadata["bug_tracker_uri"] = "https://github.com/kevgo/mortadella-ruby/issues"
end
