json.array!(@claims) do |claim|
  json.extract! claim, :id
  json.url claim_url(claim, format: :json)
end
