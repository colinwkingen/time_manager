class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.column :activity, :string

      t.timestamps
    end
  end
end
