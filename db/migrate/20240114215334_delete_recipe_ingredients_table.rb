class DeleteRecipeIngredientsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :recipe_ingredients
  end
end
