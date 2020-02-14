class Check < ApplicationRecord
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders
  has_many :modifications, through: :foods

  
  def gratuity
    if self.total > 100
      @gratuity = self.total*0.2
    else
      @gratuity = 0
    end
  end

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

    total + tax + self.tip + gratuity

  end


  def pay_check
    self.paid_status = "Paid"
    self.save
  end

  def refund_check
    self.paid_status = "Refunded"
    self.save
  end

  def set_tip(amount)
    self.tip = amount
  end
end
