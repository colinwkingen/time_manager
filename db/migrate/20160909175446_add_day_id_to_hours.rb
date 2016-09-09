class AddDayIdToHours < ActiveRecord::Migration[5.0]
  def change
    add_column :hours, :day_id, :integer
  end
end
