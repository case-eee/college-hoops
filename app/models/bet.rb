class Bet < ApplicationRecord
	belongs_to :user
	belongs_to :week
	belongs_to :game
end
