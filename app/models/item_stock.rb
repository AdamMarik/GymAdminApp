class ItemStock < ApplicationRecord
    validates :name, :quantity, presence: true
  end