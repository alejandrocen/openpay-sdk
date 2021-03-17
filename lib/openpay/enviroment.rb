# frozen_string_literal: true

module Openpay
  SANDBOX_API_URL = 'https://sandbox-api.openpay.mx/v1/'
  LIVE_API_URL = 'https://api.openpay.mx/v1/'
  DEFAULT_TIMEOUT = 90

  class Enviroment
    attr_reader :client_id, :client_secret, :api_url, :options

    def initialize(client_id, client_secret, api_url, options = {})
      @client_id = client_id
      @client_secret = client_secret
      @api_url = api_url
      @options = options
    end
  end

  class SandboxEnvironment < Enviroment
    def initialize(client_id, client_secret, options = {})
      super(client_id, client_secret, Openpay::SANDBOX_API_URL, options)
    end
  end

  class LiveEnvironment < Enviroment
    def initialize(client_id, client_secret, options = {})
      super(client_id, client_secret, Openpay::LIVE_API_URL, options)
    end
  end
end
