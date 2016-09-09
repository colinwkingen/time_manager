class Day < ActiveRecord::Base
  has_many :hours
  validates :date, :presence => true
end
