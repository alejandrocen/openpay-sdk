# frozen_string_literal: true

require_relative '../../test_helper'

class CardTest < OpenpayTest
  def test_create_card
    VCR.use_cassette('test_create_card') do
      response = Openpay::Card.create(@fixtures[:card])
      assert_equal(201, response.status)
    end
  end

  def test_get_cards
    VCR.use_cassette('test_get_cards') do
      response = Openpay::Card.list
      assert_equal(200, response.status)
    end
  end

  def test_find_card
    VCR.use_cassette('test_find_card') do
      card_id = 'kdpa1madszyrljckqzc0'
      response = Openpay::Card.find(card_id)

      assert_equal(200, response.status)
      assert_equal(card_id, JSON.parse(response.body)['id'])
    end
  end

  def test_delete_card
    VCR.use_cassette('test_delete_card') do
      card_id = 'kwbsnkrsntqppnbamlkb'
      response = Openpay::Card.delete(card_id)
      assert_equal(204, response.status)
    end
  end
end
