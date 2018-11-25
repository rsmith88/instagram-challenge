class SessionsController < ApplicationController
  # skip_before_action :require_login

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to posts_url
    else
      flash.now[:danger] = 'Invalid email/password combination!'
      render 'new'
    end

    def destroy
      log_out
      redirect_to users_new_url
    end

    def session_params
      params.require(:session).permit(:email, :password)
    end
  end


end
