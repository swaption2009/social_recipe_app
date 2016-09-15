class Recipe < ApplicationRecord
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine

  enum level_of_difficulty: [:easy, :medium, :hard]
end
