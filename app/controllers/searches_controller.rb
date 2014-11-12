class SearchesController < ApplicationController
  def index
    # @post = TextShout.where("body ILIKE ?", "%#{params[:query]}%")
    # @shouts = Shout.where(content_type: "T", id: @text_shouts.pluck(:id))
    # @users = User.where("email ILIKE ?", "%#{params[:query]}%")
  end
end
