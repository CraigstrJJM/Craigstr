class Location < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true
  validates :state, presence: true
  validates_uniqueness_of :name, scope: :state

  def list_categories(klass = Category)
    klass.all
  end
end
