# frozen_string_literal: true

module Openpay
  class HttpClient
    attr_accessor :timeout

    def initialize(enviroment, options = {})
      @enviroment = enviroment
      @timeout = options[:timeout] || DEFAULT_TIMEOUT
    end

    def execute(request)
      url = "#{@enviroment.api_url}/#{@enviroment.client_id}/#{request.path}"
      connection = Excon.new(url, user: @enviroment.client_secret)
      connection.request(method: request.verb_http)
    end
  end
end
