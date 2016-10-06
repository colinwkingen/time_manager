class AddColorToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :color, :string
  end
end
