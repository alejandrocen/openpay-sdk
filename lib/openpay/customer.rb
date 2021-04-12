# frozen_string_literal: true

module Openpay
  class Customer
    extend ResourceActions::Create
    extend ResourceActions::Update
    extend ResourceActions::List
    extend ResourceActions::Find
    extend ResourceActions::Delete
    PATH = 'customers'
  end
end
