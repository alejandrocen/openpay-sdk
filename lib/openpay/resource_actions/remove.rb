# frozen_string_literal: true

module Openpay
  module ResourceActions
    module Remove
      def remove(id)
        request = Request.new("#{self::PATH}/#{id}", :delete)
        Client.execute(request)
      end
    end
  end
end
