class Location < ActiveRecord::Base
  validates :name, presence: true
  validates :state, presence: true
  validates_uniqueness_of :name, scope: :state
end
