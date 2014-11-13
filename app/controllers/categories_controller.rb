class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category saved successfully"
    else
      flash[:error] = "Category did not save"
    end
    redirect_to :back
  end

  def show
    @category = Category.find(params[:id])
    @category.posts.new
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
