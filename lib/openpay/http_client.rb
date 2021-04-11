# frozen_string_literal: true

module Openpay
  class HttpClient
    def initialize(environment, options = {})
      @environment = environment
      @options = ConnectionOptions.from(options)
      @connection = Connection.new(@environment, @options).connection
    end

    def execute(request)
      response = @connection.send(request.http_method, request.path) do |conn|
        conn.params = request.params || {}
        conn.body = request.body.to_json if request.body
      end
      Response.from(response)
    rescue Faraday::Error => e
      raise Error.from(e)
    end
  end
end
