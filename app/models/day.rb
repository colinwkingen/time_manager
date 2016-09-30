class Day < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  validates :date, :presence => true
  validates :datefield, :presence => true

  after_create :create_defaults



  def create_defaults
    self.activities.create(name: 'Coding')
    self.activities.create(name: 'Research')
    self.activities.create(name: 'Debugging')
    self.activities.create(name: 'Testing')
    self.activities.create(name: 'Client Interaction')
    self.activities.create(name: 'Coworker Interaction')
  end
end
