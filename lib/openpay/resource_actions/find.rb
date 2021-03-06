# frozen_string_literal: true

module Openpay
  module ResourceActions
    module Find
      def find(id)
        request = Request.new("#{self::PATH}/#{id}", :get)
        Client.execute(request)
      end
    end
  end
end
