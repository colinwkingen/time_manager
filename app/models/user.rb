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

  # Should return totals of all activities and totals of activity time for the user as a hash
  # instead returns empty hash. FIX. Gets a small number now...

  def activity_totals
    activity_arr = {}
    self.days.each do |day|
      # byebug
      day.activities.each do |activity|
        key = activity.name
        if activity_arr.key?(:key)
          activity_arr[:key] += activity.total_time
        else
          activity_arr[:key] = activity.total_time
        end
      end
    end
    activity_arr
  end
end
