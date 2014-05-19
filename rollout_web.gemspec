# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rollout_web/version'

Gem::Specification.new do |spec|
  spec.name          = "rollout_web"
  spec.version       = RolloutWeb::VERSION
  spec.authors       = ["Bradley Herman"]
  spec.email         = ["bradley.t.herman@gmail.com"]
  spec.summary       = %q{Rollout dashboard}
  spec.description   = %q{Rails based frontend to manage rollout flags}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = Dir["{app,config,lib}/**/*", "Rakefile", "README.md"]
  # spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'rollout'
  spec.add_dependency 'twitter-bootstrap-rails'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'coffee-script'
end
