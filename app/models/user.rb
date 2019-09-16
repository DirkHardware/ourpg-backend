class User < ApplicationRecord
    has_many :games
    has_many :elments, through: :games
    validates :username, uniqueness: true
    has_secure_password
end
