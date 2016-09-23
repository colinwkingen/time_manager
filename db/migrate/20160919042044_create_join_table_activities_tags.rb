class CreateJoinTableActivitiesTags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :activities, :tags do |t|
      t.index [:activity_id, :tag_id]
    end
  end
end
