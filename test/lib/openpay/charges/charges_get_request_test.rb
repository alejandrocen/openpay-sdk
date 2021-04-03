# frozen_string_literal: true

require_relative '../../../test_helper'

class ChargesGetRequestTest < RequestTest
  def test_get_charges
    VCR.use_cassette('test_get_charges') do
      request = Openpay::Charges::GetRequest.new
      response = @client.execute(request)

      assert_equal(200, response.status)
    end
  end

  def test_get_charges_with_limit_param
    VCR.use_cassette('test_get_charges_with_limit_param') do
      request = Openpay::Charges::GetRequest.new do |req|
        req.params = { limit: 1 }
      end
      response = @client.execute(request)

      assert_equal(200, response.status)
      assert_equal(1, JSON.parse(response.body).count)
    end
  end

  def test_get_charges_by_transaction_id
    VCR.use_cassette('test_get_charges_by_transaction_id') do
      transaction_id = 'tr6oykqjyjtwo9hia9fl'
      request = Openpay::Charges::GetRequest.new(transaction_id)
      response = @client.execute(request)

      assert_equal(200, response.status)
      assert_equal(transaction_id, JSON.parse(response.body)['id'])
    end
  end
end
