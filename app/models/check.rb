class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders
  has_many :modifications, through: :foods

  TAX_RATE = 0.09

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
    food_prices.reduce(0.0){|sum, f| sum + f } + mod_prices.reduce(0.0){|sum, m| sum + m}
  end

  def tax
    total_tax = TAX_RATE*total
    total_tax.round(2)
  end

  def grand_total
    grand_total = total + tax + self.tip
    grand_total
  end


  def pay_check
    self.paid_status = "paid"
    self.save
  end

  def refund_check
    self.paid_status = "refunded"
    self.save
  end

  def set_tip(amount)
    self.tip = amount
  end
end
