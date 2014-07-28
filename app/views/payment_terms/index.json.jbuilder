json.array!(@payment_terms) do |payment_term|
  json.extract! payment_term, :id
  json.url payment_term_url(payment_term, format: :json)
end
