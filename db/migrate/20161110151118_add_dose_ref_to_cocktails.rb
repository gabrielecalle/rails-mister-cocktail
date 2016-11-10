class AddDoseRefToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_reference :cocktails, :dose, foreign_key: true
  end
end
