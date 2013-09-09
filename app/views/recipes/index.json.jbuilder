json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :serves, :cost, :made_by, :last_made, :ingredients, :image
  json.url recipe_url(recipe, format: :json)
end
