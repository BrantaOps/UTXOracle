# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$:.unshift lib unless $:.include?(lib)

require 'utxoracle/version'

Gem::Specification.new do |spec|
  spec.name                   = 'utxoracle'
  spec.version                = Utxoracle::VERSION
  spec.platform               = Gem::Platform::RUBY
  spec.authors                = ['Keith Gardner']

  spec.summary                = 'Offline price oracle for Bitcoin.'
  spec.description            = 'Offline price oracle for Bitcoin. Offers programmable data providers (Bitcoin node, mempool, etc). Can be used from commandline, or integrated into existing ruby stacks.'
  spec.homepage               = 'https://github.com/BrantaOps/UTXOracle'
  spec.license                = 'MIT'
  spec.required_ruby_version  = '>= 3.1.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/BrantaOps/UTXOracle'

  spec.files                  = `git ls-files`.split("\n")
  spec.bindir                 = 'bin'
  spec.require_path           = 'lib'

  spec.add_dependency 'cleanrpc', '~> 0.0.2'
  spec.add_dependency 'typhoeus', '~> 1.4.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-console'
  spec.add_development_dependency 'stackprof'
end
