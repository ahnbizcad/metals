json.array!(@port_of_loadings) do |port_of_loading|
  json.extract! port_of_loading, :id
  json.url port_of_loading_url(port_of_loading, format: :json)
end
