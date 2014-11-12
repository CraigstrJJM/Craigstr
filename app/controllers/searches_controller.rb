class SearchesController < ApplicationController
  def index
    @post = TextShout.where("body ILIKE ?", "%#{params[:query]}%")
    @shouts=Shout.where(content_type: "TextShout", content_id: @text_shouts.pluck(:id))
    @users=User.where("email ILIKE ?", "%#{params[:query]}%")
  end
end
