json.array!(@corporations) do |corporation|
  json.extract! corporation, :id, :name, :outline
  json.url corporation_url(corporation, format: :json)
end
