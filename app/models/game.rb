class Game < ApplicationRecord
	has_many :bets
	belongs_to :week
end
