class AddMeasurementAndAmountToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :measurement, :string
    add_column :ingredients, :amount, :string
  end
end
