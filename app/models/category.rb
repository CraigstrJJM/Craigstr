class Category < ActiveRecord::Base
  has_many :posts
  validates :name, presence: true, uniqueness: true

  def post
    Post.new
  end
end
