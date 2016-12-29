class Day < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  validates :datefield, :presence => true

  after_create :create_defaults

  def weekday
    weekday = self.datefield.wday
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    return weekdays[weekday]
  end


  def create_defaults
    self.activities.create(name: 'Backend Coding', color: '#B00')
    self.activities.create(name: 'Frontend Coding', color: '#0B0')
    self.activities.create(name: 'Debugging', color: '#00B')
    self.activities.create(name: 'Testing', color: '#AA0')
    self.activities.create(name: 'Styling', color: '#0AA')
    self.activities.create(name: 'Setup', color: '#A0A')
  end
end
