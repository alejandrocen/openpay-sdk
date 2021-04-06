# frozen_string_literal: true

module Openpay
  module Tokens
    class GetRequest < Request
      PATH = 'tokens'
      METHOD = :get

      def initialize(token_id)
        super("#{PATH}/#{token_id}", METHOD)
      end
    end
  end
end
