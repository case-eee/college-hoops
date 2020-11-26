class UsersController < ApplicationController
	def new
	end

	def create
		User.create(user_params)
		redirect_to :root
	end

	private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
