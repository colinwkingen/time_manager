class AddUserIdToDay < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :user_id, :integer
  end
end
