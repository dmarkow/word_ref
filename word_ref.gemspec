# -*- encoding: utf-8 -*-
require File.expand_path('../lib/word_ref/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dylan Markow"]
  gem.email         = ["dylan@dylanmarkow.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "word_ref"
  gem.require_paths = ["lib"]
  gem.version       = WordRef::VERSION

  gem.add_runtime_dependency "faraday", "~> 0.7.6"
  gem.add_runtime_dependency "faraday_middleware", "~> 0.8.5"
  gem.add_runtime_dependency "hashie"
end
