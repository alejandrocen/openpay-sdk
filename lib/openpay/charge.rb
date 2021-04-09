# frozen_string_literal: true

module Openpay
  class Charge
    extend ResourceActions::Create
    extend ResourceActions::Retrive
    extend ResourceActions::List
    PATH = 'charges'
  end
end
