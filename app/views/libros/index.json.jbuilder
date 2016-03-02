json.array!(@libros) do |libro|
  json.extract! libro, :id
  json.url libro_url(libro, format: :json)
end
