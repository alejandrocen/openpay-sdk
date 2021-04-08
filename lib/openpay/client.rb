# frozen_string_literal: true

module Openpay
  class Client
    attr_reader :cards, :charges, :tokens, :webhooks
    
    RESOURCES = {
      cards: Card,
      charges: Charge,
      tokens: Token,
      webhooks: Webhook,
    }

    def initialize(environment, options = {})
      @http_client = HttpClient.new(environment)
      define_resources
    end

    private

    def define_resources
      RESOURCES.each do |key, klass|
        instance_variable_set("@#{key}", klass.new(@http_client))
      end
    end
  end
end
