# frozen_string_literal: true

require_relative 'lib/openpay/version'

Gem::Specification.new do |spec|
  spec.name                  = 'openpay-sdk'
  spec.version               = Openpay::VERSION
  spec.authors               = ['Alejandro Cen']
  spec.email                 = %w[alex96.cen@gmail.com]
  spec.description           = "This repository contains Openpay's Ruby SDK"
  spec.summary               = 'Openpay SDK for Ruby'
  spec.homepage              = 'https://www.openpay.mx/'
  spec.license               = 'Apache-2.0'
  spec.required_ruby_version = '>= 2.5.0'
  spec.files                 = Dir['{lib}/**/*', 'LICENSE']
  spec.require_paths         = %w[lib]
end
