# frozen_string_literal: true

module Openpay
  module ResourceActions
    module Retrive
      def retrive(id)
        request = Request.new("#{self::PATH}/#{id}", :get)
        Client.execute(request)
      end
    end
  end
end
