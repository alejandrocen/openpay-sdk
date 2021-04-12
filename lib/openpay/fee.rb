# frozen_string_literal: true

module Openpay
  class Fee
    extend ResourceActions::Create
    extend ResourceActions::List
    PATH = 'fees'

    def self.refund(id, attributes = {})
      request = Request.new("#{PATH}/#{id}/refund", :post) { |req| req.body = attributes }
      Client.execute(request)
    end
  end
end
