# frozen_string_literal: true

require_relative '../../test_helper'

class FeeTest < OpenpayTest
  def test_create_fee
    VCR.use_cassette('test_create_fee') do
      response = Openpay::Fee.create(@fixtures[:fee])
      assert_equal(200, response.status)
    end
  end

  def test_get_fees
    VCR.use_cassette('test_get_fees') do
      response = Openpay::Fee.list
      assert_equal(200, response.status)
    end
  end

  def test_get_fees_with_limit_param
    VCR.use_cassette('test_get_fees_with_limit_param') do
      response = Openpay::Fee.list(limit: 1)
      assert_equal(200, response.status)
      assert_equal(1, JSON.parse(response.body).count)
    end
  end

  def test_refund_fee
    VCR.use_cassette('test_refund_fee') do
      response = Openpay::Fee.refund('trsgpj8gvzetdusvo2yg', description: 'Devolución de comisión')
      assert_equal(200, response.status)
    end
  end
end
