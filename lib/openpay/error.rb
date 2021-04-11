# frozen_string_literal: true

module Openpay
  class Error < StandardError
    attr_reader :body, :description, :category, :http_code, :error_code, :request_id

    def initialize(body = {})
      @body = body
      @description = @body['description']
      @category = @body['category']
      @http_code = @body['http_code']
      @error_code = @body['error_code']
      @request_id = @body['request_id']
      super(@description)
    end

    def self.from(exception)
      case exception.response_status.to_i
      when 0
        NoConnectionError.new('description' => 'Could not connect to payment system.')
      when 400, 401, 402, 403, 404, 409, 412, 413, 422, 423, 500, 503
        ApiError.new(JSON.parse(exception.response[:body]))
      else
        exception
      end
    end
  end

  class ApiError < Error
  end

  class NoConnectionError < Error
  end
end
