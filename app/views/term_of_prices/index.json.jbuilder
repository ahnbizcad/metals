json.array!(@term_of_prices) do |term_of_price|
  json.extract! term_of_price, :id
  json.url term_of_price_url(term_of_price, format: :json)
end
