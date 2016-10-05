class CreateEaterGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :eater_groups do |t|
      t.integer :eater_id
      t.integer :group_id
      t.integer :event_id

      t.timestamps
    end
  end
end
