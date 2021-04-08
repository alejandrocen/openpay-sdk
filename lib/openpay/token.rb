# frozen_string_literal: true

module Openpay
  class Token < Resource

    def create(body)
      request = Tokens::PostRequest.new { |req| req.body = body }
      @client.execute(request)
    end

    def find(id)
      request = Tokens::GetRequest.new(id)
      @client.execute(request)
    end

    def all(limit = nil)
      request = Tokens::GetRequest.new do |req|
        req.params = { limit: limit } unless limit.nil?
      end
      @client.execute(request)
    end
  end
end
