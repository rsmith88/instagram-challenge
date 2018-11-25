class UsersController < ApplicationController

  def new
  @user = User.new
  end

  def create
  @user = User.create(user_params)
    if @user.save
      # log_in @user
      redirect_to users_url # posts_url
    else
      flash.now[:danger] = '<ul> Invalid email or password: <li> Password must be 6-10 characters long </li> <li> Email must include an @ symbol </li></ul>'
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
