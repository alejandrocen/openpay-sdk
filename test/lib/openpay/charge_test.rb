# frozen_string_literal: true

require_relative '../../test_helper'

class ChargeTest < RequestTest

  def test_create_charge
    VCR.use_cassette('test_create_charge') do
      response = @client.charges.create(@fixtures[:charge])
      assert_equal(200, response.status)
    end
  end

  def test_create_charge_with_invalid_source_id
    error = assert_raises(Openpay::ApiError) do
      VCR.use_cassette('test_create_charge_with_invalid_source_id') do
        @client.charges.create(@fixtures[:charge])
      end
    end

    assert_equal('This source_id was already used', error.message)
    assert_equal(422, error.http_code)
    assert_equal(1003, error.error_code)
    assert_equal('request', error.category)
  end

  def test_get_charges
    VCR.use_cassette('test_get_charges') do
      response = @client.charges.all
      assert_equal(200, response.status)
    end
  end

  def test_get_charges_with_limit_param
    VCR.use_cassette('test_get_charges_with_limit_param') do
      response = @client.charges.all(1)
      assert_equal(200, response.status)
      assert_equal(1, JSON.parse(response.body).count)
    end
  end


  def test_get_charges_by_transaction_id
    VCR.use_cassette('test_get_charges_by_transaction_id') do
      transaction_id = 'tr6oykqjyjtwo9hia9fl'
      response = @client.charges.find(transaction_id)
      assert_equal(200, response.status)
      assert_equal(transaction_id, JSON.parse(response.body)['id'])
    end
  end
end
