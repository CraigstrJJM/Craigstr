class CategoriesController < ApplicationController

  def index
    @dashboard = Dashboard.new(current_user)
  end

  def create
    @dashboard = Dashboard.new(current_user)

    if @dashboard.category(category_params).save
      render "dashboards/admin"
    else
      redirect_to :back
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
