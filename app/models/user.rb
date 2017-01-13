class User < ApplicationRecord

  # before_create :add_to_mailchimp

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :days
  validates :name, :presence => true
  validates :email, :presence => true

  def add_to_mailchimp
    list_id = "c52ca432e8"
    @gibbon = Gibbon::Request.new
    subscribe = @gibbon.lists(list_id).members.create(body: { email_address: self.email, status: "subscribed", double_optin: true })
  end

  def days_total
    total = 0
    self.days.each do |day|
      total += day.day_total
    end
    total
  end

  def activity_totals
    activity_h = {}
    self.days.each do |day|
      day.activities.each do |activity|
        value = {time: activity.total_time, color: activity.color, count: activity.return_time, percentage: 0}
        key = activity.name
        time_arr = activity.return_time
        if activity_h.key?(key)
          activity_h[key][:time] += activity.total_time
          activity_h[key][:count][0] += time_arr[0]
          activity_h[key][:count][1] += time_arr[1]
          activity_h[key][:count][2] += time_arr[2]
        else
          activity_h.store(key, value)
        end
        if (self.days_total.to_f > 0) && (self.days_total.to_f.is_a? Numeric)
          activity_h[key][:percentage] = ((activity_h[key][:time].to_f / self.days_total.to_f).round(2) * 100).to_i
        end
      end
    end
    activity_h
  end
end
