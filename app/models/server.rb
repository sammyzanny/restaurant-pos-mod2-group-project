class Server < ApplicationRecord
    has_many :checks

    validates :name, uniqueness: true
    validates :pin, uniqueness: true, length: {is: 4}

    def open_checks
        self.checks.where(paid_status: "Unpaid")
    end

    def closed_checks
        self.checks.where(paid_status: "Paid")
    end

    def cheapskates
        self.checks.where(paid_status: "Refunded")
    end

    
end
