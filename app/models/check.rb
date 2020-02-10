class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders

  def food_id=(food_id)
    food = Food.find_by(id: food_id)
  end
  
end
