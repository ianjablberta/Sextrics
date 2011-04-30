class LoginController < ApplicationController
  def index
  end

  def login
    users = User.where(:username => params['user']['username'])
    if (users.length > 0)
      user = users.first
    else
      user = User.new(params['user'])
      user.save!
    end

    redirect_to "/user/#{user.id}"
  end
end
