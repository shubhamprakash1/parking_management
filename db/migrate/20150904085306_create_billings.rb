class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :user_id
      t.string :method
      t.boolean :status
      t.string :comments
      t.string :customer_id
      t.integer :vendor_id
      t.integer :parking_id

      t.timestamps null: false
    end
  end
end
