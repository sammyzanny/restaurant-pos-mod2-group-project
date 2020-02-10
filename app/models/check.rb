class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders
  
end
