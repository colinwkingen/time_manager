class ChangeActivityColumnToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :activities, :activity, :name
  end
end
