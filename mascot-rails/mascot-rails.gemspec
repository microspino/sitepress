# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../../mascot/lib/mascot/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "mascot-rails"
  spec.version       = Mascot::VERSION
  spec.authors       = ["Brad Gessler"]
  spec.email         = ["bradgessler@gmail.com"]

  spec.summary       = %q{Mascot rails integration.}
  spec.homepage      = "https://github.com/bradgessler/mascot"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "actionpack", "~> 4.2"

  spec.add_runtime_dependency "mascot", spec.version
end