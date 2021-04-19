# frozen_string_literal: true

module Openpay
  module ResourceActions
    module Delete
      def delete(id)
        request = Request.new("#{self::PATH}/#{id}", :delete)
        Client.execute(request)
      end

      def delete_by_customer(customer_id, id)
        request = Request.new("customers/#{customer_id}/#{self::PATH}/#{id}", :delete)
        Client.execute(request)
      end
    end
  end
end
