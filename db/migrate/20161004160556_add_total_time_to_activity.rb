class AddTotalTimeToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :total_time, :integer, default: 0
  end
end
