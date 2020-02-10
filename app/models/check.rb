class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders

  def food_id=(food_id)
    food = Food.find_by(id: food_id)
    self.foods << food
  end

  def food_id
    results = []
    self.foods.each do |food|
      results << food_id
    end
  end
  
end
