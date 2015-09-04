class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :schedule_at
      t.text :map

      t.timestamps null: false
    end
  end
end
