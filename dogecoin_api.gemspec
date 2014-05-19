# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogecoin_api/version'

Gem::Specification.new do |spec|
  spec.name          = "dogecoin_api"
  spec.version       = DogecoinApi::VERSION
  spec.authors       = ["Cale Sennett"]
  spec.email         = ["calesennett@gmail.com"]
  spec.summary       = %q{DogeAPI V2 ruby wrapper.}
  spec.description   = %q{A simple ruby wrapper for the DogeAPI V2 actions.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
