json.array!(@corporations) do |corporation|
  json.extract! corporation, :id, :name, :outline, :email, :password
  json.url corporation_url(corporation, format: :json)
end
