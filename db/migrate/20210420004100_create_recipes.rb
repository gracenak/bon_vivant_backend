class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :img
      t.string :ingredients
      t.string :directions
      t.string :cook_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
