class Recipe < ActiveRecord::Base
  # has_many :ingredients
  belongs_to :recipe_list
end
