class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :name
      t.integer :event_id
      t.float :price
      t.integer :total_slot
      t.integer :vendor_id
      t.text :map
      t.integer :qr_code_id

      t.timestamps null: false
    end
  end
end
