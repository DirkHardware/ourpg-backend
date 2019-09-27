class User < ApplicationRecord
    has_many :games
    has_many :elements, through: :games
    
    validates :username, presence: true, uniqueness: true
    has_secure_password
end
