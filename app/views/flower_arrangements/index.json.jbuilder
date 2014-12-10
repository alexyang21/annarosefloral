json.array!(@flower_arrangements) do |flower_arrangement|
  json.extract! flower_arrangement, :id, :name, :category
  json.url flower_arrangement_url(flower_arrangement, format: :json)
end
