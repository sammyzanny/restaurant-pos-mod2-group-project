class Food < ApplicationRecord
    has_many :orders
    has_many :modifications, through: :orders

    validates :name, presence: true, uniqueness: true


   def total_sold
    self.orders.length
   end

   def current_orders
    self.orders.where(paid_status: 'Unpaid').length
   end


end
