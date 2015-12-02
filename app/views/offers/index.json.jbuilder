json.array!(@offers) do |offer|
  json.extract! offer, :id, :title, :detail, :corporation_id, :wanted, :limited_on, :category_id
  json.url offer_url(offer, format: :json)
end
