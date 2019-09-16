class Game < ApplicationRecord
    has_many :elements
    belongs_to :user
end
