class AddPhotoToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :photo_url, :string
  end
end
