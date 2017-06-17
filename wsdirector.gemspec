# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wsdirector/version'

Gem::Specification.new do |spec|
  spec.name          = "wsdirector"
  spec.version       = Wsdirector::VERSION
  spec.authors       = ["Vladimir Katyurin"]
  spec.email         = ["ff0000nose@gmail.com"]

  spec.description   = %q{CLI for WS testing}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/palkan/wsdirector"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  #spec.bindir        = "exe"
  spec.require_paths = ["lib"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency "thor"
  spec.add_dependency "websocket-client-simple"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
