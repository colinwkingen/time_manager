class ChangeDatefieldDatatype < ActiveRecord::Migration[5.0]
  def change
    remove_column :days, :datefield, :string
    add_column :days, :datefield, :date
  end
end
