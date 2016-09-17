class Activity < ActiveRecord::Base
  belongs_to :day
  validates :activity, :presence => true
end
