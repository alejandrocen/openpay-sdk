# frozen_string_literal: true

module Openpay
  class Webhook < Resource

    def create(body)
      request = Webhooks::PostRequest.new { |req| req.body = body }
      @client.execute(request)
    end

    def find(id)
      request = Webhooks::GetRequest.new(id)
      @client.execute(request)
    end

    def all(limit = nil)
      request = Webhooks::GetRequest.new do |req|
        req.params = { limit: limit } unless limit.nil?
      end
      @client.execute(request)
    end

    def delete(id)
      request = Webhooks::DeleteRequest.new(id)
      @client.execute(request)
    end
  end
end
