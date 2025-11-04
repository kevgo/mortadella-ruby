# frozen_string_literal: true

require "bundler"
require "bundler/gem_tasks"
require "cucumber"
require "cucumber/rake/task"

# Files to lint and format
RUBY_FILES = "lib/*.rb lib/**/*.rb mortadella.gemspec Rakefile"

Cucumber::Rake::Task.new :features
task default: [:lint, :features]

desc "Fix all auto-fixable issues"
task "fix" do
  sh "bundle exec rubocop -A #{RUBY_FILES}"
  sh "dprint fmt"
end

desc "Run linters"
task "lint" do
  sh "bundle exec rubocop #{RUBY_FILES}"
  sh "dprint check"
end
