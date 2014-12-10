json.array!(@rentals) do |rental|
  json.extract! rental, :id, :name, :cost
  json.url rental_url(rental, format: :json)
end
