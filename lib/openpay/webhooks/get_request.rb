# frozen_string_literal: true

module Openpay
  module Webhooks
    class GetRequest < Request
      PATH = 'webhooks'
      METHOD = :get

      def initialize(webhook_id = nil)
        full_path = webhook_id.nil? ? PATH : "#{PATH}/#{webhook_id}"
        super(full_path, METHOD)
      end
    end
  end
end
