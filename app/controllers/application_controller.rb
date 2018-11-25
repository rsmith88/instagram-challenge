class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  include SessionsHelper

  def redirect_to_login
    redirect_to sessions_new_url
  end

  def redirect_to_signup
    redirect_to users_new_url
  end

end
