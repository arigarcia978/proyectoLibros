json.array!(@estante_libros) do |estante_libro|
  json.extract! estante_libro, :id, :libro_id, :estante_id
  json.url estante_libro_url(estante_libro, format: :json)
end
