class AddRunningSwitchToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :timer_switch, :boolean, null: false, default: false
  end
end
