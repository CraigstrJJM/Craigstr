class PostsController < ApplicationController
  def new
    @category = find_category
    @post = @category.posts.new
  end

  def create
    @category = find_category
    @post = @category.posts.new(post_params)

    if @post.save
      render :show
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
    params.require(:post).permit(
      :category_id,
      :content,
      :location_id,
      :title,
    ).merge(user: current_user)
  end

  def find_category
    Category.find(params[:post][:category_id])
  end
end
