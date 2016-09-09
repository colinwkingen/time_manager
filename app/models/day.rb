class Day < ActiveRecord::Base
  validates :date, :presence => true
end
