class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :first_name
      t.string :last_name
      t.string :last4
      t.string :card_security_code
      t.string :credit_card_number
      t.integer :expiration_month
      t.integer :expiration_year
      t.decimal :amount
      t.boolean :success
      t.string :authorization_code
      t.integer :user_id
      t.boolean :notify
      t.integer :parking_id

      t.timestamps null: false
    end
  end
end
