# frozen_string_literal: true

require_relative '../../test_helper'

class CardTest < RequestTest

  def test_create_card
    VCR.use_cassette('test_create_card') do
      response = @client.cards.create(@fixtures[:card])
      assert_equal(201, response.status)
    end
  end
end
