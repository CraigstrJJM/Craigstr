class TagsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @category.tag_list.add(params[:tag_list])
    @category.save
    redirect_to :back
  end
end
