class RemoveDateColumnFromDays < ActiveRecord::Migration[5.0]
  def change
    remove_column :days, :date
  end
end
