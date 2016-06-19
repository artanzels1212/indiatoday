json.array!(@cities) do |city|
  json.extract! city, :id, :city_name
 
end

