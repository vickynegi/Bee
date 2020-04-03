class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.float :fees
      t.boolean :on_going

      t.timestamps
    end
  end
end
