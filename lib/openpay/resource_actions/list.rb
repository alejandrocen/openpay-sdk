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
    end
  end
end
