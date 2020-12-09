class WeeksController < ApplicationController
	before_action :authorize

	def index
		@week = current_week
		render :show if current_week.present?
	end

	def show
		@week = current_week
	end
end
