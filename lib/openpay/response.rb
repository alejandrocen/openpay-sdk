# frozen_string_literal: true

module Openpay
  class Response
    attr_accessor :body, :headers, :status

    def self.from(http_response)
      response = Response.new
      response.body = http_response.body
      response.headers = http_response.headers
      response.status = http_response.status
      response
    end
  end
end
