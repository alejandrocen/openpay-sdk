# frozen_string_literal: true

module Openpay
  class Configuration
    attr_accessor :environment, :timeout

    def initialize
      @timeout = 90
    end

    def self.setup
      new.tap do |instance|
        yield(instance) if block_given?
      end
    end
  end
end
