# frozen_string_literal: true

module Openpay
  class Webhook
    extend ResourceActions::Create
    extend ResourceActions::Find
    extend ResourceActions::List
    extend ResourceActions::Delete
    PATH = 'webhooks'
  end
end
