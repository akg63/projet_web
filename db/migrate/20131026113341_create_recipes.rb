class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :ingredients
      t.string :preparation
      t.string :image
      t.integer :category

      t.timestamps
    end
  end
end
