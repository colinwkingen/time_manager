class Activity < ActiveRecord::Base
  belongs_to :day
  validates :name, :presence => true

end
