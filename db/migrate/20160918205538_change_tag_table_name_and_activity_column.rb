class ChangeTagTableNameAndActivityColumn < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :tags_for_activities, :tags
  end
  def self.down
    rename_table :tags, :tags_for_activities
  end
end
