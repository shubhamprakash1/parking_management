json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :schedule_at, :map
  json.url event_url(event, format: :json)
end
