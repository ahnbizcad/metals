json.array!(@consignees) do |consignee|
  json.extract! consignee, :id
  json.url consignee_url(consignee, format: :json)
end
