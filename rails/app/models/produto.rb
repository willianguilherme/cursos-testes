class Produto < ApplicationRecord
  extend Enumerize


  STATES = [
    "yes",
    "no"
  ].freeze

  enumerize :state, in: STATES
end
