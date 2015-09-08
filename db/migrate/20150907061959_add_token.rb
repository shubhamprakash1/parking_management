class AddToken < ActiveRecord::Migration
  def change
     add_column :parkings, :token, :string    
  end
end
