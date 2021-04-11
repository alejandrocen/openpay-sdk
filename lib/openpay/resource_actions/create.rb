# frozen_string_literal: true

module Openpay
  module ResourceActions
    module Create
      def create(attributes)
        request = Request.new(self::PATH, :post) { |req| req.body = attributes }
        Client.execute(request)
      end
    end
  end
end
