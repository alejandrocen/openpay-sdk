# frozen_string_literal: true

require_relative '../../test_helper'

class WebhookTest < RequestTest
  def test_create_webhook
    VCR.use_cassette('test_create_webhook') do
      response = Openpay::Webhook.create(@fixtures[:webhook])
      assert_equal(201, response.status)
    end
  end

  def test_get_webhook_by_id
    VCR.use_cassette('test_get_webhook_by_id') do
      webhook_id = 'wqogx3xpqvy30526l4qj'
      response = Openpay::Webhook.retrive(webhook_id)
      assert_equal(200, response.status)
      assert_equal(webhook_id, JSON.parse(response.body)['id'])
    end
  end

  def test_get_all_webhooks
    VCR.use_cassette('test_get_all_webhooks') do
      response = Openpay::Webhook.list
      assert_equal(200, response.status)
      assert_equal(1, JSON.parse(response.body).count)
    end
  end

  def test_delete_webhook_by_id
    VCR.use_cassette('test_delete_webhook_by_id') do
      webhook_id = 'wqogx3xpqvy30526l4qj'
      response = Openpay::Webhook.remove(webhook_id)
      assert_equal(204, response.status)
    end
  end
end
