# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elm/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "elm-rails"
  spec.version       = Elm::Rails::VERSION
  spec.authors       = ["Jason Dew"]
  spec.email         = ["jason.dew@gmail.com"]

  spec.summary       = %q{Compile Elm into JavaScript via Sprockets.}
  spec.description   = %q{Compile Elm into JavaScript via Sprockets.}
  spec.homepage      = "https://github.com/jasondew/elm-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties",        ">= 4.0.0", "< 5.0"
  spec.add_dependency "sprockets-rails", "~> 3.0"
  spec.add_dependency "sprockets",       "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
