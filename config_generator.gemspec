# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'config_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "config_generator"
  spec.version       = ConfigGenerator::VERSION
  spec.authors       = ["kurochan"]
  spec.email         = ["kuro@kurochan.org"]
  spec.summary       = %q{Simple configuration file generator}
  spec.description   = %q{Simple configuration file generator using csv file.}
  spec.homepage      = "https://github.com/kurochan/config_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9.3"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
