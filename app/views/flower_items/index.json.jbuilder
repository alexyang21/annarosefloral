json.array!(@flower_items) do |flower_item|
  json.extract! flower_item, :id, :quantity
  json.url flower_item_url(flower_item, format: :json)
end
