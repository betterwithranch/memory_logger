# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memory_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "memory_logger"
  spec.version       = MemoryLogger::VERSION
  spec.authors       = ["Craig Israel"]
  spec.email         = ["craig@theisraels.net"]
  spec.summary       = %q{ A simple in-memory implementation of a Ruby logger.}
  spec.description   = %q{ Useful in test scenarios to inspect log output. }
  spec.homepage      = "https://github.com/craigisrael/memory_logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
