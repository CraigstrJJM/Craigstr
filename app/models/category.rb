class Category < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true, uniqueness: true

  def new_post
    Post.new
  end
end
