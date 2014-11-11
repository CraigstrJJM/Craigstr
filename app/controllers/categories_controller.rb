class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @category = Category.new
  end

  def create
    @user = current_user
    @locations = Location.all
    @location = Location.new
    @categories = Category.all
    @category = Category.new(category_params)

    if @category.save
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
