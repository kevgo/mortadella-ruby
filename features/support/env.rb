# frozen_string_literal: true

require "simplecov"
SimpleCov.start do
  enable_coverage :branch
  add_filter "/features/"
end

require "bundler/setup"
Bundler.setup
require "mortadella"
