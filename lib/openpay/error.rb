# frozen_string_literal: true

module Openpay
  class Error < StandardError
    def self.from(response)
      http_status = response.status

      if http_status.to_s.empty? || [0, 1].include?(http_status)
        NoConnectionError.new('No se pudo conectar al sistema de pagos.')
      else
        ApiError.new(JSON.parse(response.body))
      end
    end
  end

  class ApiError < Error
    attr_reader :category, :description, :http_code, :error_code, :request_id

    def initialize(body = {})
      @category = body['category']
      @description = body['description']
      @http_code = body['http_code']
      @error_code = body['error_code']
      @request_id = body['request_id']
      super(@description)
    end
  end

  class NoConnectionError < Error
  end
end
