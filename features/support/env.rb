if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
end

require 'bundler/setup'
Bundler.setup
require 'mortadella'
