json.array!(@parkings) do |parking|
  json.extract! parking, :id, :name, :event_id, :price, :total_slot, :vendor_id, :map, :qr_code_id
  json.url parking_url(parking, format: :json)
end
