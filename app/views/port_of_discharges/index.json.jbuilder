json.array!(@port_of_discharges) do |port_of_discharge|
  json.extract! port_of_discharge, :id
  json.url port_of_discharge_url(port_of_discharge, format: :json)
end
