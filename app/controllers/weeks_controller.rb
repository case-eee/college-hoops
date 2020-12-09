class WeeksController < ApplicationController
	before_action :authorize

	def show
		@week = Week.find(params[:id])
	end
end
