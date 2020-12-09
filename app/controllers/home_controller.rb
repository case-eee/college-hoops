class HomeController < ApplicationController
  before_action :authorize

  def index
    week = Week.where(current: true).first

    if week.present?
      redirect_to weeks_path(week)
    else
      render :index
    end
  end
end
