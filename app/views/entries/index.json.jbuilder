json.array!(@entries) do |entry|
  json.extract! entry, :id, :offer_id, :student_id
  json.url entry_url(entry, format: :json)
end
