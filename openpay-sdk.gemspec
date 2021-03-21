# frozen_string_literal: true

require_relative 'lib/openpay/version'

Gem::Specification.new do |spec|
  spec.name                  = 'openpay-sdk'
  spec.version               = Openpay::VERSION
  spec.authors               = ['Alejandro Cen', 'Edwin Baeza']
  spec.email                 = %w[alex96.cen@gmail.com edwinbaeza05@gmail.com]
  spec.description           = "This repository contains Openpay's Ruby SDK"
  spec.summary               = 'Openpay SDK for Ruby'
  spec.homepage              = 'https://www.openpay.mx/'
  spec.license               = 'Apache-2.0'
  spec.required_ruby_version = '>= 2.5.0'
  spec.files                 = Dir['{lib}/**/*', 'LICENSE']
  spec.require_paths         = %w[lib]

  spec.add_dependency 'faraday', '~> 1.3'

  spec.add_development_dependency 'byebug', '~> 11.1'
  spec.add_development_dependency 'minitest', '~> 5.14'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '~> 1.11'
  spec.add_development_dependency 'rubocop-minitest', '~> 0.10.3'
  spec.add_development_dependency 'rubocop-rake', '~> 0.5.1'
end
