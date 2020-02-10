class Order < ApplicationRecord
  belongs_to :check
  belongs_to :food
end
