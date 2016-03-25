# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'homeland/pm/version'

Gem::Specification.new do |spec|
  spec.name          = "homeland-pm"
  spec.version       = Homeland::Pm::VERSION
  spec.authors       = ["P.S.V.R"]
  spec.email         = ["pmq2001@gmail.com"]

  spec.summary       = %q{adds Personal Message service to Homeland}
  spec.description   = %q{adds Personal Message service to Homeland -- a new style forum for small communities.}
  spec.homepage      = "https://github.com/pmq20/homeland-pm"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", '>= 0.10.3'

  spec.add_dependency 'homeland', "~> 1.0.0.beta3"
end
