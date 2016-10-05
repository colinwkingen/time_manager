class ChangeDateToDateType < ActiveRecord::Migration[5.0]
  def change
    def self.up
      change_column :days, :datefield, :string
    end

    def self.down
      change_column :days, :datefield, :datetime
    end
  end
end
