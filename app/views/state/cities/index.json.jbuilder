json.array!(@state_cities) do |state_city|
  json.extract! state_city, :id, :city_name
  json.url state_city_url(state_city, format: :json)
end
