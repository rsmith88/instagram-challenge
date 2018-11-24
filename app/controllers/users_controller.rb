class UsersController < ApplicationController

  def new
  @user = User.new
  end

  def create
  @user = User.create(user_params)
      @user.save # Start with "if"
      # log_in @user
      redirect_to users_new_url # posts_url
    # else
    #   flash.now[:danger] = '<ul> Invalid email or password: <li> Password must be 6-10 characters long </li> <li> Email must include an @ symbol </li></ul>'
    #   render 'new'
  end

  def index
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
