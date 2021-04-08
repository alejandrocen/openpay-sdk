# frozen_string_literal: true

module Openpay
  class Card < Resource

    def create(body)
      request = Cards::PostRequest.new { |req| req.body = body }
      @client.execute(request)
    end
  end
end
