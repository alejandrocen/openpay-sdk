# frozen_string_literal: true

require_relative '../../test_helper'

class CustomerTest < OpenpayTest
  def test_create_customer
    VCR.use_cassette('test_create_customer') do
      response = Openpay::Customer.create(@fixtures[:customer])
      assert_equal(201, response.status)
    end
  end

  def test_get_customers
    VCR.use_cassette('test_get_customers') do
      response = Openpay::Customer.list
      assert_equal(200, response.status)
    end
  end

  def test_get_customers_with_creation_filter
    VCR.use_cassette('test_get_customers_with_creation_filter') do
      response = Openpay::Customer.list(creation: { gte: '2021-04-10' })
      assert_equal(200, response.status)
      assert_equal(1, JSON.parse(response.body).count)
    end
  end

  def test_update_customer
    VCR.use_cassette('test_update_customer') do
      response = Openpay::Customer.update(
        'ajvgvouwc4kmcxz8tukk',
        @fixtures[:customer].merge(phone_number: '44209087654')
      )
      assert_equal(200, response.status)
    end
  end

  def test_get_customer_by_id
    VCR.use_cassette('test_get_customer_by_id') do
      customer_id = 'ajvgvouwc4kmcxz8tukk'
      response = Openpay::Customer.find(customer_id)
      assert_equal(200, response.status)
      assert_equal(customer_id, JSON.parse(response.body)['id'])
    end
  end

  def test_delete_customer_by_id
    VCR.use_cassette('test_delete_customer_by_id') do
      response = Openpay::Customer.delete('at4ia8zdxal88e90qcwv')
      assert_equal(204, response.status)
    end
  end
end
