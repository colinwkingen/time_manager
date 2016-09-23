class Activity < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :day
  validates :activity, :presence => true
end
