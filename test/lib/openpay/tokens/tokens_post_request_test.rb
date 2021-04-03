# frozen_string_literal: true

require_relative '../../../test_helper'

class TokensPostRequestTest < RequestTest
  def test_create_token
    VCR.use_cassette('test_create_token') do
      request = Openpay::Tokens::PostRequest.new do |req|
        req.body = @fixtures[:card]
      end

      response = @client.execute(request)
      assert_equal(201, response.status)
    end
  end
end
