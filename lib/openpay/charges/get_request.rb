# frozen_string_literal: true

module Openpay
  module Charges
    class GetRequest < Request
      PATH = 'charges'
      METHOD = :get

      def initialize(transaction_id = nil)
        if transaction_id.nil?
          super(PATH, METHOD)
        else
          super("#{PATH}/#{transaction_id}", METHOD)
        end
      end
    end
  end
end
