# frozen_string_literal: true

module Openpay
  class Error < StandardError
    def self.from(exception)
      case exception.response_status.to_i
      when 0
        NoConnectionError.new('Could not connect to payment system.')
      when 400, 401, 402, 403, 404, 409, 412, 413, 422, 423, 500, 503
        ApiError.new(JSON.parse(exception.response[:body]))
      else
        Error.new(exception)
      end
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
