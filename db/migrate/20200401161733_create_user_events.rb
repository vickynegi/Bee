class CreateUserEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.boolean :is_attending
      t.index [:user_id, :event_id], unique: true
      t.timestamps
    end
  end
end
