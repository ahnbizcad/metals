json.array!(@packings) do |packing|
  json.extract! packing, :id
  json.url packing_url(packing, format: :json)
end
