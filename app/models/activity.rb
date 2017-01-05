class Activity < ActiveRecord::Base
  belongs_to :day
  validates :name, :presence => true
  default_scope { order('id ASC') }


  def return_time
    minutes = self.total_time / 60
    hours = minutes / 60
    seconds = self.total_time % 60
    return [seconds, minutes, hours]
  end

  def percentage
    @total = 0.00
    self.day.activities.each do |activity|
      @total += (activity.total_time * 10).to_f
    end
    if @total < 1
      return
    else
      @this_total = (self.total_time * 10).to_f
      return ((@this_total / @total) * 100).to_i.round(0)
    end
  end

  def current_diff
    @running_total = TimeDifference.between(self.updated_at, Time.now).in_seconds.to_i
    minutes = @running_total / 60
    hours = minutes / 60
    seconds = @running_total % 60
    return [seconds, minutes, hours]
  end
end
# Get updated times from here. These methods return the same value until
# the timestamp is made.
