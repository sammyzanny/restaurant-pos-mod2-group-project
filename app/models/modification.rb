class Modification < ApplicationRecord
    belongs_to :order
    has_one :check, through: :order
    has_one :food, through: :order
end
