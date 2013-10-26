json.array!(@recipes) do |recipe|
  json.extract! recipe, :title, :description, :ingredients, :preparation, :image, :category
  json.url recipe_url(recipe, format: :json)
end
