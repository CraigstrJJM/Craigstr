class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = "Post saved successfully"
      render :show
    else
      flash[:error] = "Post did not save"
      redirect_to :back
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to [@post.category, @post]
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
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
end
