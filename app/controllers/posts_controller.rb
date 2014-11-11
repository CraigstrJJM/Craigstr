class PostsController < ApplicationController

  def new
    @category = find_category
    @post = @category.posts.new
  end

  def create
    @category = find_category
    @post = @category.posts.new(post_params)

    if @post.save
      redirect_to @category
    else
      render :new
    end
  end

  def show
    @category = find_category
    @post = @category.posts.find(params[:id])
  end

  def edit
    @category = find_category
    @post = @category.posts.find(params[:id])
  end

  def update
    @category = find_category
    @post = @category.posts.find(params[:id])

    if @post.update(post_params)
      redirect_to [@category, @post]
    else
      render :edit
    end
  end

  def destroy
    category = find_category
    post = category.posts.find(params[:id])
    post.destroy

    redirect_to category
  end


  private

  def post_params
    params.require(:post).permit(:category_id, :location_id, :user_id, :content)
  end

  def find_category
    category.find(params[:category_id])
  end
end
