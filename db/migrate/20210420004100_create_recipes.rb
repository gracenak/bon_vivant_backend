class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :img
      t.float :average_rating
      t.string :cuisine
      t.string :ingredients
      t.string :directions
      t.string :cook_time

      t.timestamps
    end
  end
end
