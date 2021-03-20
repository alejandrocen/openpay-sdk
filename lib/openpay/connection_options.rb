# frozen_string_literal: true

module Openpay
  class ConnectionOptions
    def self.default
      { timeout: 90 }
    end

    def self.from(options)
      default.merge(options)
    end
  end
end
