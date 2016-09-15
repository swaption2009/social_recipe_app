class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cooking_time
      t.string :level_of_difficulty
      t.references :food_type, foreign_key: true
      t.references :food_preference, foreign_key: true
      t.references :cuisine, foreign_key: true
      t.text :ingredients
      t.text :procedure

      t.timestamps
    end
  end
end
