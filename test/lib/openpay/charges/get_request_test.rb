# frozen_string_literal: true

require_relative '../../../test_helper'

class GetRequestTest < Minitest::Test
  def setup
    @client = HttpClientHelper.new
  end

  def test_get_charges
    request = Openpay::Charges::GetRequest.new
    response = @client.execute(request)

    assert_equal(200, response.status)
  end

  def test_get_charges_with_limit_param
    request = Openpay::Charges::GetRequest.new do |req|
      req.params = { limit: 1 }
    end
    response = @client.execute(request)

    assert_equal(200, response.status)
    assert_equal(1, JSON.parse(response.body).count)
  end
end
