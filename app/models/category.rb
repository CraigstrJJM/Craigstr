class Category < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :sub_categories
  validates :name, presence: true, uniqueness: true
  has_many :posts
end
