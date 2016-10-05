class CreateEaters < ActiveRecord::Migration[5.0]
  def change
    create_table :eaters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :event_id

      t.timestamps
    end
  end
end
