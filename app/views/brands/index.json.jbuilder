json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :symbol
  json.url brand_url(brand, format: :json)
end
