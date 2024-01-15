json.extract! recipe, :id, :user_id, :title, :cook_time, :servings, :visibility, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
