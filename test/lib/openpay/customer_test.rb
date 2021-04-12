# frozen_string_literal: true

require_relative '../../test_helper'

class CustomerTest < OpenpayTest
  def test_create_customer
    VCR.use_cassette('test_create_customer') do
      response = Openpay::Customer.create(@fixtures[:customer])
      assert_equal(201, response.status)
    end
  end
end
