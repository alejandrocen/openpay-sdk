# frozen_string_literal: true

module Openpay
  class Charge
    extend ResourceActions::Create
    extend ResourceActions::Find
    extend ResourceActions::List
    PATH = 'charges'
  end
end
