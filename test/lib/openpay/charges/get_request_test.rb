# frozen_string_literal: true

require_relative '../../../test_helper'

class GetRequestTest < RequestTest
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

  def test_get_charges_by_transaction_id
    transaction_id = 'trqj3v2vliza4noj0ehh'
    request = Openpay::Charges::GetRequest.new(transaction_id)
    response = @client.execute(request)

    assert_equal(200, response.status)
    assert_equal(transaction_id, JSON.parse(response.body)['id'])
  end
end
