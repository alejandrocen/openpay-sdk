# frozen_string_literal: true

module Openpay
  SANDBOX_API_URL = 'https://sandbox-api.openpay.mx/v1/'
  LIVE_API_URL = 'https://api.openpay.mx/v1/'

  class Environment
    attr_reader :client_id, :client_secret, :api_url

    def initialize(client_id, client_secret, api_url)
      @client_id = client_id
      @client_secret = client_secret
      @api_url = api_url
    end
  end

  class SandboxEnvironment < Environment
    def initialize(client_id, client_secret)
      super(client_id, client_secret, Openpay::SANDBOX_API_URL)
    end
  end

  class LiveEnvironment < Environment
    def initialize(client_id, client_secret)
      super(client_id, client_secret, Openpay::LIVE_API_URL)
    end
  end
end
