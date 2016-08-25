# frozen_string_literal: true

require 'bundler'
require 'bundler/gem_tasks'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new :features
task default: %i(lint features)

desc 'Run linter'
task 'lint' do
  sh 'bundle exec rubocop'
end
