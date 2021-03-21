# frozen_string_literal: true

module Openpay
  class Error < StandardError
    def self.from(exception)
      return Error.new(exception) unless exception.is_a?(Faraday::Error)
      return NoConnectionError.new('Could not connect to payment system.') if exception.response_status.nil?

      ApiError.new(JSON.parse(exception.response[:body]))
    end
  end

  class ApiError < Error
    attr_reader :description, :category, :http_code, :error_code, :request_id

    def initialize(body = {})
      @description = body['description']
      @category = body['category']
      @http_code = body['http_code']
      @error_code = body['error_code']
      @request_id = body['request_id']
      super(@description)
    end
  end

  class NoConnectionError < Error
  end
end
