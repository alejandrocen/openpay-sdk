# frozen_string_literal: true

module Openpay
  module Tokens
    class PostRequest < Request
      PATH = 'tokens'
      METHOD = :post

      def initialize
        super(PATH, METHOD)
      end
    end
  end
end
