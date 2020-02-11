class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders
  has_many :modifications, through: :foods

  def food_id=(food_id)
    food = Food.find_by(id: food_id)
    self.foods << food
  end

  def food_id
    results = []
    self.foods.each do |food|
      results << food.id
    end
    results
  end
  
  def total
    food_prices = self.foods.map{|food| food.price}
    mod_prices = self.modifications.map{|mod| mod.price}
    food_prices.reduce(:+) + mod_prices.reduce(:+)
  end
  
end
