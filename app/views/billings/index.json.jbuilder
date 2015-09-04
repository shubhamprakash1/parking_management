json.array!(@billings) do |billing|
  json.extract! billing, :id, :user_id, :method, :status, :comments, :customer_id, :vendor_id, :parking_id
  json.url billing_url(billing, format: :json)
end
