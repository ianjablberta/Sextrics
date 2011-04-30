class ActivitiesController < ApplicationController

  before_filter :load_user

  def new
    @activity = Activity.new({:user_id => @user.id})
  end

  def create
    @activity = Activity.new(params[:activity])
    if @activity.save
      redirect_to_dashboard
    else
      render :new
    end
  end

end
