# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'claws/version'

Gem::Specification.new do |spec|
  spec.name          = "claws"
  spec.version       = Claws::VERSION
  spec.authors       = ["Brian Mathiyakom"]
  spec.email         = ["brian@rarevisions.net"]
  spec.summary       = %q{A thread pool extracted from puma}
  spec.description   = %q{A thread pool extracted from puma}
  spec.homepage      = "https://github.com/winterchord/claws"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
