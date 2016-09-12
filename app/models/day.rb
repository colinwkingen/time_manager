class Day < ActiveRecord::Base
  has_many :hours
  validates :date, :presence => true
  validates :datefield, :presence => true
end
