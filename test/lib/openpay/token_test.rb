# frozen_string_literal: true

require_relative '../../test_helper'

class TokenTest < OpenpayTest
  def test_create_token
    VCR.use_cassette('test_create_token') do
      response = Openpay::Token.create(@fixtures[:card])
      assert_equal(201, response.status)
    end
  end

  def test_get_token
    VCR.use_cassette('test_get_token') do
      response = Openpay::Token.find('krnsmcqqypsft2xeftqt')
      assert_equal(200, response.status)
    end
  end
end
