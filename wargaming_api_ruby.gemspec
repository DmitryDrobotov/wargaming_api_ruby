# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wargaming_api/version'

Gem::Specification.new do |spec|
  spec.name          = "wargaming_api_ruby"
  spec.version       = WargamingApi::VERSION
  spec.authors       = ["Dmitry Drobotov"]
  spec.email         = ["dm.drobotov@gmail.com"]
  spec.summary       = %q{Ruby interface for Wargaming API}
  spec.description   = %q{Provides classes to access to all Wargaming Games API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
