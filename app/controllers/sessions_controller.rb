class SessionsController < ApplicationController
	def new
	end

  def create
    user = User.find_by(username: params[:login][:username].downcase)

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to home_path, notice: 'Successfully logged in!'
    else
      flash.now.alert = "Incorrect email or password, try again."
      render :new
    end
  end
end
