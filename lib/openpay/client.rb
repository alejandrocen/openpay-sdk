# frozen_string_literal: true

module Openpay
  module Client
    def self.execute(request)
      client.execute(request)
    end

    def self.client
      raise ArgumentError, 'Environment was not initialized' if Openpay.environment.nil?

      @client ||= HttpClient.new(Openpay.environment)
    end
  end
end
