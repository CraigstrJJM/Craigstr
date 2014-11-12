class Category < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true, uniqueness: true

  def post(*args)
    Post.new(*args)
  end
end
