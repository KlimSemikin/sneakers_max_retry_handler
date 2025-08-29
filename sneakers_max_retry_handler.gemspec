lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sneakers_max_retry_handler/version'

Gem::Specification.new do |spec|
  spec.name          = "sneakers_max_retry_handler"
  spec.version       = SneakersMaxRetryHandler::VERSION
  spec.authors       = ["KlimSem"]
  spec.email         = ["klimsemikin@gmail.com"]
  spec.licenses      = ['MIT']

  spec.summary       = %q{Adds MaxRetry Handler to use with Kicks}
  spec.description   = %q{Adds MaxRetry handler which supports additional settings}
  spec.homepage      = "https://github.com/KlimSemikin/sneakers_max_retry_handler"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "kicks", "~> 3.2.0"
end
