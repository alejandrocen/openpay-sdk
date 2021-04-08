# frozen_string_literal: true

module Openpay
  class Charge < Resource
    def create(body)
      request = Charges::PostRequest.new { |req| req.body = body }
      @client.execute(request)
    end

    def find(id)
      request = Charges::GetRequest.new(id)
      @client.execute(request)
    end

    def all(limit = nil)
      request = Charges::GetRequest.new do |req|
        req.params = { limit: limit } unless limit.nil?
      end
      @client.execute(request)
    end
  end
end
