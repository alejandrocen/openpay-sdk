# frozen_string_literal: true

module Openpay
  class HttpClient
    attr_accessor :timeout

    def initialize(environment, options = {})
      @environment = environment
      @timeout = options[:timeout] || DEFAULT_TIMEOUT
    end

    def execute(request)
      url = "#{@environment.api_url}/#{@environment.client_id}/#{request.path}"
      connection = Excon.new(url, user: @environment.client_secret)
      connection.request(method: request.verb_http)
    end
  end
end
