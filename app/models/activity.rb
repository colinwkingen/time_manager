class Activity < ActiveRecord::Base
  belongs_to :day
  validates :name, :presence => true


  def return_time
    minutes = self.total_time / 60
    hours = minutes / 60
    seconds = self.total_time - ( hours * 180 )
    return [seconds, minutes, hours]
  end

end
