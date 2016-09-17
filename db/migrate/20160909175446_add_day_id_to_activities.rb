class AddDayIdToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :day_id, :integer
  end
end
