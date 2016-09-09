class CreateHours < ActiveRecord::Migration[5.0]
  def change
    create_table :hours do |t|
      t.column :activity, :string

      t.timestamps
    end
  end
end
