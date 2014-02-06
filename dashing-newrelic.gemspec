# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dashing/newrelic/version'

Gem::Specification.new do |spec|
  spec.name          = "dashing-newrelic"
  spec.version       = Dashing::Newrelic::VERSION
  spec.authors       = ["Pierre-Louis Gottfrois"]
  spec.email         = ["pierrelouis.gottfrois@gmail.com"]
  spec.description   = %q{Dashing-Rails widget that display newrelic metrics}
  spec.summary       = %q{Dashing-Rails widget that display newrelic metrics}
  spec.homepage      = "https://github.com/gottfrois/dashing-newrelic"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "activeresource"
  spec.add_runtime_dependency "newrelic_api"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
