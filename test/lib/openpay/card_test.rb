# frozen_string_literal: true

require_relative '../../test_helper'

class CardTest < OpenpayTest
  def test_create_card
    VCR.use_cassette('test_create_card') do
      response = Openpay::Card.create(@fixtures[:card])
      assert_equal(201, response.status)
    end
  end
end
