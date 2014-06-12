class CreateGetScores < ActiveRecord::Migration
  def change
    create_table :get_scores do |t|
      t.integer :score_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
