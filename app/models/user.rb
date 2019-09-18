class User < ApplicationRecord
    has_many :games
    has_many :elements, through: :games
    validates :username, uniqueness: true
    has_secure_password
end
