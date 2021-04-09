# frozen_string_literal: true

module Openpay
  class Token
    extend ResourceActions::Create
    extend ResourceActions::Retrive
    extend ResourceActions::List
    PATH = 'tokens'
  end
end
