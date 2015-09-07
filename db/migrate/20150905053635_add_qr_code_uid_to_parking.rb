class AddQrCodeUidToParking < ActiveRecord::Migration
  def change
    add_column :parkings, :qr_code_uid, :string
  end
end
