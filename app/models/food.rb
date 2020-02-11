class Food < ApplicationRecord
    has_many :orders
    has_many :modifications

    def add_modification_to_food
      self.modifications.build
      self.modifications << 
    end
end
