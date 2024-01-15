class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :cook_time
      t.integer :servings
      t.integer :visibility

      t.timestamps
    end
  end
end
