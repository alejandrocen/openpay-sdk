# frozen_string_literal: true

module Openpay
  class Connection
    def initialize(environment, options = {})
      @environment = environment
      @base_url = "#{@environment.api_url}#{@environment.client_id}"
      @options = options
    end

    def connection
      Faraday.new(url: @base_url) do |conn|
        conn.use Faraday::Response::RaiseError
        conn.options.timeout = @options[:timeout]
        conn.headers['Authorization'] = 'Basic ' + @environment.client_secret
        conn.headers['Content-Type'] = 'application/json'
        conn.headers['User-Agent'] = "Ruby - Openpay SDK v#{Openpay::VERSION}"
      end
    end
  end
end
