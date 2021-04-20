class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :recipe_id
      t.string :title
      t.string :content
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
