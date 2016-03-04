json.array!(@rates) do |rate|
  json.extract! rate, :id, :estante_libro_id, :puntaje, :review
  json.url rate_url(rate, format: :json)
end
