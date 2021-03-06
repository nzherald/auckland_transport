# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auckland_transport/version'

Gem::Specification.new do |spec|
  spec.name          = 'auckland_transport'
  spec.version       = AucklandTransport::VERSION
  spec.authors       = ['Caleb Tutty']
  spec.email         = ['caleb@prettymint.co.nz']
  spec.summary       = %q{Wrapper for the Auckland Transport API}
  spec.description   = %q{Make accessing https://api.at.govt.nz/ more pleasant, and more Ruby-esque}
  spec.homepage      = 'https://github.com/tuttinator/auckland_transport'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end
