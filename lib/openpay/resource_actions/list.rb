# frozen_string_literal: true

module Openpay
  module ResourceActions
    module List
      def list(limit = nil)
        request = Request.new(self::PATH, :get) do |req|
          req.params = { limit: limit } unless limit.nil?
        end
        Client.execute(request)
      end
    end
  end
end
