class ApplicationController < ActionController::Base
  protect_from_forgery

  def redirect_to_dashboard
    redirect_to "/user/#{session[:user_id]}"
  end

  def load_user
    @user = User.find(session[:user_id])
  end
end
