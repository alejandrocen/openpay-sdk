# frozen_string_literal: true

module Openpay
  class HttpClient
    def initialize(environment, options = {})
      @environment = environment
      @options = default_configuration.merge(options)
      @connection = Connection.new(@environment, @options).connection
    end

    def execute(request)
      @connection.send(request.http_method, request.path) do |conn|
        conn.params = request.params || {}
        conn.body = request.body if request.body
      end
    rescue StandardError => e
      raise Error.from(e)
    end

    private

    def default_configuration
      { timeout: 90 }
    end
  end
end
