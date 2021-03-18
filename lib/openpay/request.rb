# frozen_string_literal: true

module Openpay
  class Request
    attr_reader :path, :verb_http

    def initialize(path, verb_http)
      @path = path
      @verb_http = verb_http
    end
  end
end
