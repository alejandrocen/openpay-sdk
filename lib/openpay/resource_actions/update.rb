# frozen_string_literal: true

module Openpay
  module ResourceActions
    module Update
      def update(id, attributes = {})
        request = Request.new("#{self::PATH}/#{id}", :put) { |req| req.body = attributes }
        Client.execute(request)
      end
    end
  end
end
