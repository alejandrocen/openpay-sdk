# frozen_string_literal: true

module Openpay
  class Resource
    def initialize(client)
      @client = client
    end

    def create(body)
      raise NotImplementedError
    end

    def find(id)
      raise NotImplementedError
    end

    def all(limit = nil)
      raise NotImplementedError
    end

    def delete(id)
      raise NotImplementedError
    end
  end
end
