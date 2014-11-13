class PostsController < ApplicationController

  def new
    @post =Post.new
    @post.category=Category.find(params[:post][:category_id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def show
    @post= Post.find(params[:id])
  end

  def edit
    @category = find_category
    @post = @category.posts.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
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
    params.require(:post).permit(:title, :category_id, :location_id, :content).merge(user: current_user)
  end
  
  def find_category
    Category.find(params[:post][:category_id])
  end
end
