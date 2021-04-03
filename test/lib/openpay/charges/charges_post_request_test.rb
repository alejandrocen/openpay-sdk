# frozen_string_literal: true

require_relative '../../../test_helper'

class ChargesPostRequestTest < RequestTest
  def test_create_charge
    VCR.use_cassette('test_create_charge') do
      request = Openpay::Charges::PostRequest.new { |req| req.body = @fixtures[:charge] }
      response = @client.execute(request)
      assert_equal(200, response.status)
    end
  end

  def test_create_charge_with_invalid_source_id
    error = assert_raises(Openpay::ApiError) do
      VCR.use_cassette('test_create_charge_with_invalid_source_id') do
        request = Openpay::Charges::PostRequest.new { |req| req.body = @fixtures[:charge] }
        @client.execute(request)
      end
    end

    assert_equal('This source_id was already used', error.message)
    assert_equal(422, error.http_code)
    assert_equal(1003, error.error_code)
    assert_equal('request', error.category)
  end
end
