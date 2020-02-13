class Modification < ApplicationRecord
    belongs_to :order
    has_one :check, through: :order
    has_one :food, through: :order
    
    def self.search_mods(input)
        results = self.all.select do |mod|
            mod.note.include?(input.downcase)
        end
        results.map do |mod|
            mod.note
        end
    end
    
    def self.most_common_modification
        results = {}
        self.all.each do |mod|
            r = self.search_mods(mod.note)
            results[:"#{mod.note}"] = r.count
        end
        results.sort_by {|k, v| -v}
    end

end
