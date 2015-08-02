class ShoppingList < ActiveRecord::Base
  has_many :ingredients
  belongs_to :recipes
end
