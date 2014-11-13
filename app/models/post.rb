class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :location
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end