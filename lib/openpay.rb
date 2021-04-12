# frozen_string_literal: true

require 'json'
require 'base64'
require 'faraday'
require 'forwardable'

require 'openpay/connection_options'
require 'openpay/connection'
require 'openpay/environment'
require 'openpay/error'
require 'openpay/http_client'
require 'openpay/request'
require 'openpay/response'
require 'openpay/version'

require 'openpay/resource_actions/create'
require 'openpay/resource_actions/list'
require 'openpay/resource_actions/delete'
require 'openpay/resource_actions/find'

require 'openpay/configuration'
require 'openpay/client'
require 'openpay/card'
require 'openpay/charge'
require 'openpay/token'
require 'openpay/webhook'
require 'openpay/fee'
require 'openpay/customer'

module Openpay
  @config = Openpay::Configuration.setup

  class << self
    extend Forwardable
    def_delegators :@config, :environment, :environment=
    def_delegators :@config, :timeout, :timeout=
  end
end
