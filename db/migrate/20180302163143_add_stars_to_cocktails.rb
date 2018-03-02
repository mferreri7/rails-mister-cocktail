class AddStarsToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :stars, :integer, default: 0
  end
end
