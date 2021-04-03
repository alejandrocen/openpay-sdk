# frozen_string_literal: true

require_relative '../../../test_helper'

class CardsPostRequestTest < RequestTest
  def test_create_card
    request = Openpay::Cards::PostRequest.new do |req|
      req.body = @fixtures['card'].to_json
    end

    response = @client.execute(request)
    assert_equal(201, response.status)
  end
end
