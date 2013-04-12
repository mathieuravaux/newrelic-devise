# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newrelic-devise/version'

Gem::Specification.new do |gem|
  gem.name          = "newrelic-devise"
  gem.version       = NewrelicDevise::VERSION
  gem.authors       = ["Mathieu Ravaux"]
  gem.email         = ["mathieu.ravaux@gmail.com"]
  gem.description   = %q{New Relic Instrumentation for Devise}
  gem.summary       = %q{Wraps Devise potentially time-consuming methods so they appear in NewRelic.}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
end
