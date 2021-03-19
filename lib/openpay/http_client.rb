# frozen_string_literal: true

module Openpay
  class HttpClient
    attr_accessor :timeout

    def initialize(environment, options = {})
      @environment = environment
      @base_url = "#{@environment.api_url}/#{@environment.client_id}"
      @timeout = options[:timeout] || DEFAULT_TIMEOUT
    end

    def execute(request)
      connection = Faraday.new(url: "#{@base_url}/#{request.path}") do |conn|
        conn.use Faraday::Response::RaiseError
        conn.options.timeout = @timeout
        conn.basic_auth(@environment.client_secret, '')
      end
      connection.send(request.http_method)
    rescue StandardError => e
      raise Error.from(e)
    end
  end
end
