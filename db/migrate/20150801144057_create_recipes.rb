class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|

      t.string :title
      t.string :ingredients
      t.string :directions
      t.belongs_to :recipe_list
      # t.string? :reviews
      # t.references :image
      t.timestamps
    end
  end
end
