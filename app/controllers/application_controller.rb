class ApplicationController < ActionController::Base

  def redirect_to_login
    redirect_to users_new_url
  end

end
