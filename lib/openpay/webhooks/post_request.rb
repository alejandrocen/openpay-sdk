# frozen_string_literal: true

module Openpay
  module Webhooks
    class PostRequest < Request
      PATH = 'webhooks'
      METHOD = :post

      def initialize
        super(PATH, METHOD)
      end
    end
  end
end
