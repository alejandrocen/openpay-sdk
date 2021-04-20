# frozen_string_literal: true

module Openpay
  class Card
    extend ResourceActions::Create
    extend ResourceActions::List
    extend ResourceActions::Find
    extend ResourceActions::Delete
    PATH = 'cards'
  end
end
