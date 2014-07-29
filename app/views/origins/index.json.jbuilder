json.array!(@origins) do |origin|
  json.extract! origin, :id
  json.url origin_url(origin, format: :json)
end
