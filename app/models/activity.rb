class Activity < ActiveRecord::Base
  belongs_to :day
  validates :name, :presence => true


  def check_validity
    if self.activity == "Void"
      self.destroy
    end
  end

end
