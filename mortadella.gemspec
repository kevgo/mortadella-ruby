# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = "mortadella"
  s.version       = "1.1.0"
  s.authors       = ["Kevin Goslar"]
  s.email         = ["kevin.goslar@gmail.com"]
  s.summary       = "Mock Ruby Table Delivery"
  s.description   = "A tool to create Ruby table object to be used for Cucumber comparisons"
  s.homepage      = "https://github.com/kevgo/mortadella-ruby"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.7"
  s.metadata["rubygems_mfa_required"] = "true"
end
