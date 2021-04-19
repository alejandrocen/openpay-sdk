# frozen_string_literal: true

module Openpay
  module ResourceActions
    module List
      def list(params = {})
        request = Request.new(self::PATH, :get) do |req|
          req.params = params
        end
        Client.execute(request)
      end

      def list_by_customer(customer_id)
        request = Request.new("customers/#{customer_id}/#{self::PATH}", :get)
        Client.execute(request)
      end
    end
  end
end
