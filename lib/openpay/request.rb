# frozen_string_literal: true

module Openpay
  class Request
    METHODS = %i[get post put delete].freeze

    attr_reader :path, :http_method
    attr_accessor :body, :params

    def initialize(path, http_method)
      raise ArgumentError, "Unknown http method: #{http_method}" unless Request::METHODS.include?(http_method)

      @path = path
      @http_method = http_method
      yield(self) if block_given?
    end
  end
end
