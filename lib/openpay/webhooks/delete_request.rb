# frozen_string_literal: true

module Openpay
  module Webhooks
    class DeleteRequest < Request
      PATH = 'webhooks'
      METHOD = :delete

      def initialize(webhook_id)
        super("#{PATH}/#{webhook_id}", METHOD)
      end
    end
  end
end
