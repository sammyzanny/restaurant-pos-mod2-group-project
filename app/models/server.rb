class Server < ApplicationRecord
    has_many :checks

    validates :name, uniqueness: true
    validates :pin, uniqueness: true, length: {is: 4}
end
