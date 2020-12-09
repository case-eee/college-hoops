class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.email.downcase!
    user.username.downcase!

    if user.save
      flash[:notice] = "Account created successfully!"
      redirect_to :root
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid username and password and try again."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end
end
