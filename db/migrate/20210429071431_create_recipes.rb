class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :img
      t.string :cook_time
      t.string :ingredients
      t.string :directions
      t.string :slug

      t.timestamps
    end
  end
end
