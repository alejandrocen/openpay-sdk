# frozen_string_literal: true

module Openpay
  module Cards
    class PostRequest < Request
      PATH = 'cards'
      METHOD = :post

      def initialize
        super(PATH, METHOD)
      end
    end
  end
end
