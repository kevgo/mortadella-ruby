# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = "mortadella"
  s.version       = "0.0.2"
  s.authors       = ["Kevin Goslar"]
  s.email         = ["kevin.goslar@gmail.com"]
  s.summary       = %q{Mock Ruby Table Delivery}
  s.description   = %q{A tool to create Ruby table object to be used for Cucumber comparisons}
  s.homepage      = "https://github.com/Originate/mortadella"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
