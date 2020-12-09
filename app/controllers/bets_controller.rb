class BetsController < ApplicationController
  before_action :authorize

  def create
    current_bet = current_user.bets.find_by(game_id: params[:game_id])

    if current_bet.present? && params[:pick] != current_bet.cover
    	current_bet.update!(cover: params[:pick])
    else
    	current_user.bets.create!(week: current_week, game_id: params[:game_id], cover: params[:pick])
    end

    redirect_to current_week
  end
end
