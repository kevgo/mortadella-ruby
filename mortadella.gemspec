lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'mortadella'
  s.version       = '1.1.0'
  s.authors       = ['Kevin Goslar']
  s.email         = ['kevin.goslar@gmail.com']
  s.summary       = 'Mock Ruby Table Delivery'
  s.description   = 'A tool to create Ruby table object to be used for Cucumber comparisons'
  s.homepage      = 'https://github.com/Originate/mortadella'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = Dir['features/*']
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
end
