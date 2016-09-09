class Hour < ActiveRecord::Base
  validates :activity, :presence => true
end
