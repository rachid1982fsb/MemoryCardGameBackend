class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :gamelevel
      t.integer :finish_time
      t.integer :number_of_flips
      t.integer :user_id

      t.timestamps
    end
  end
end
