# frozen_string_literal: true

module Openpay
  module Charges
    class PostRequest < Request
      PATH = 'charges'
      METHOD = :post

      def initialize
        super(PATH, METHOD)
      end
    end
  end
end
