class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer "score"
      t.integer "high_score"
      t.integer "timer"
      t.string "difficulty"
      t.integer "level"
      t.integer "user_id"
      t.timestamps
    end
  end
end
