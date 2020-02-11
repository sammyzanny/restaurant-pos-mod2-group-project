class Order < ApplicationRecord
  has_many :modifications
  belongs_to :check
  belongs_to :food
end
