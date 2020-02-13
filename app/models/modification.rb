class Modification < ApplicationRecord
    belongs_to :order
    has_one :check, through: :order
    has_one :food, through: :order

    # most common modification

    # 

    def self.search_mods(input)
        self.all.select do |mod|
            mod.note.include?(input.downcase)
        end
    end

end
