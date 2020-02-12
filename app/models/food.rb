class Food < ApplicationRecord
    has_many :orders
    has_many :modifications, through: :orders


   def total_sold
    self.orders.length
   end

   def current_orders
    self.orders.where(paid_status: 'unpaid').length
   end


end
