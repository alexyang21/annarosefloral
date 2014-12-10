json.array!(@flowers) do |flower|
  json.extract! flower, :id, :name, :cost
  json.url flower_url(flower, format: :json)
end
