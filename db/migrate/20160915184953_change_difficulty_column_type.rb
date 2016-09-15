class ChangeDifficultyColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :level_of_difficulty, :integer
  end
end
