json.array!(@rental_items) do |rental_item|
  json.extract! rental_item, :id, :quantity, :rental_id
  json.url rental_item_url(rental_item, format: :json)
end
