json.array!(@models) do |model|
  json.extract! model, :id, :name, :brand_id
  json.url model_url(model, format: :json)
end
