class Post < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :sub_categories
  belongs_to :category
  belongs_to :location
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
end
