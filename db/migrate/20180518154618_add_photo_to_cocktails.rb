class AddPhotoToCocktails < ActiveRecord::Migration[5.2]
  def change
    t.string :photo
  end
end
