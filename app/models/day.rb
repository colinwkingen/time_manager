class Day < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  validates :date, :presence => true
  validates :datefield, :presence => true
end
