class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.string :title
      t.string :ingredient, array: true, default: []
      t.timestamps
    end
  end
end
