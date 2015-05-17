# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'NetrunnerDb/version'

Gem::Specification.new do |spec|
  spec.name          = 'NetrunnerDb'
  spec.version       = NetrunnerDb::VERSION
  spec.authors       = ['Tommy Parnell']
  spec.email         = ['tparnell8@gmail.com']


  spec.summary       = %q{Wrapper over NetrunnerDb API}
  spec.description   = %q{Wrapper over NetrunnerDb API}
  spec.homepage      = 'https://github.com/tparnell8/RNetrunnerDb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_dependency 'faraday'
  spec.add_dependency 'json'
end
