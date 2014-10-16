# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "travis-model-build-config"
  spec.version       = "0.0.1"
  spec.authors       = ["Kamil Trzcinski"]
  spec.email         = ["ayufan@ayufan.eu"]
  spec.summary       = %q{Travis-CI config generator.}
  spec.description   = %q{Code in this gem is taken from https://github.com/travis-ci/travis-core/blob/master/lib/travis/model/build/.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features|play)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "activesupport", "~> 4.0"
end
