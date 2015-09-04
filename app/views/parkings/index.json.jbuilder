json.array!(@parkings) do |parking|
  json.extract! parking, :id, :event_id, :price, :total_slot, :vendor_id, :map
  json.url parking_url(parking, format: :json)
end
