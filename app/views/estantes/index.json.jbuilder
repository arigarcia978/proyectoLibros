json.array!(@estantes) do |estante|
  json.extract! estante, :id, :libro_id, :usuario_id
  json.url estante_url(estante, format: :json)
end
