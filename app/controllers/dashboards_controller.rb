class DashboardsController < ApplicationController
  def show
    @dashboard = Dashboard.new(current_user)

    if @dashboard.user.admin
      render :admin
    end
  end

  def admin
  end
end
