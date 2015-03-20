# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mortadella"
  spec.version       = "0.0.1"
  spec.authors       = ["Kevin Goslar"]
  spec.email         = ["kevin.goslar@gmail.com"]
  spec.summary       = %q{Mock Ruby Table Delivery}
  spec.description   = %q{A tool to create Ruby table object to be used for Cucumber comparisons}
  spec.homepage      = "https://github.com/Originate/mortadella"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "rspec"
end
