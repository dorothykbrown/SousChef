class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :time
      t.string :difficulty
      t.integer :rating
      t.integer :servings
      t.string :category
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
