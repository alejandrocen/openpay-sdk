# frozen_string_literal: true

module Openpay
  class ConnectionOptions
    def self.default
      { timeout: Openpay.timeout }
    end

    def self.from(options)
      default.merge(options)
    end
  end
end
