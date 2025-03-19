# frozen_string_literal: true

if ENV["CI"]
  require "simplecov"
  SimpleCov.start
end

require "bundler/setup"
Bundler.setup
require "mortadella"
