class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :hearing_conference_id

      t.timestamps
    end
  end
end
