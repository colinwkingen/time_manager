class Hour < ActiveRecord::Base
  belongs_to :day
  validates :activity, :presence => true
end
