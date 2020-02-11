class Food < ApplicationRecord
    has_many :orders
    has_many :modifications
end
