module WeekHelper
	# def disabled?(game)
	# 	selected_home?(game) || selected_away?(game)
	# end

	def selected_home?(game)
		picked?(game, "home") ? "selected" : ""
	end

	def selected_away?(game)
		picked?(game, "away") ? "selected" : ""
	end

	private

	def picked?(game, home_or_away)
		current_user.bets.where(game_id: game.id, cover: home_or_away).first.present?
	end
end
