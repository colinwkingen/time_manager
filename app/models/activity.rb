class Activity < ActiveRecord::Base
  belongs_to :day
  validates :name, :presence => true
  default_scope {order('id ASC')}


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
      @this_total = ( self.total_time * 10 ).to_f
      return ((@this_total / @total).round(2) * 100).to_i
    end
  end
end
