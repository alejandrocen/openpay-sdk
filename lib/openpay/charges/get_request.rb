# frozen_string_literal: true

module Openpay
  module Charges
    class GetRequest < Request
      def initialize
        super('charges', 'GET')
      end
    end
  end
end
