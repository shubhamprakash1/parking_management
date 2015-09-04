json.array!(@parkings) do |parking|
  json.extract! parking, :id, :name, :event_id, :price, :total_slot, :vendor_id, :map, :payment_url
  json.url parking_url(parking, format: :json)
end
