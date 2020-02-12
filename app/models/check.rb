class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders
  has_many :modifications, through: :foods

  @tax_rate = .9 

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
    # mod_prices = self.modifications.map{|mod| mod.price}
    if food_prices.reduce(:+) == nil
      food_prices = [0]
    end
    # if mod_prices.reduce(:+) == nil
    #   mod_prices = [0]
    # end
    food_prices.reduce(:+)# + mod_prices.reduce(:+)

  end

  def tax
    @tax_rate*total
  end

  

  

end
