class PostController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = post.all
  end

  def show
  end

  def new
    @post = post.new
  end

  def edit
  end

  def create
    @post = post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render :json @post.errors }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: "post was successfully destroyed." }
      format.json { }
    end
  end

  private
    def set_post
      @post = post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :price, :category_id, :user_id, :region_id)
    end
  end
