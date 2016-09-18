class Activity < ActiveRecord::Base
  has_and_belongs_to_many :activities
  belongs_to :day
  validates :activity, :presence => true
end
