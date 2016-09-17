class AddStartAndEndTimeToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :start_time, :integer
    add_column :activities, :end_time, :integer  
  end
end
