# frozen_string_literal: true

module Openpay
  class Webhook
    extend ResourceActions::Create
    extend ResourceActions::Retrive
    extend ResourceActions::List
    extend ResourceActions::Remove
    PATH = 'webhooks'
  end
end
