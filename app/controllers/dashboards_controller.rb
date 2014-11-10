class DashboardsController < ApplicationController
  def show
  @user=current_user
  @locations = Location.all
  @location=Location.new
    if @user.admin
      render :admin
    end
  end

  def admin
  end
end
