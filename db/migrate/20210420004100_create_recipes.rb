class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :img
      t.float :average_rating

      t.timestamps
    end
  end
end