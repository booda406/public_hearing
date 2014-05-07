class CreateHearingConferences < ActiveRecord::Migration
  def change
    create_table :hearing_conferences do |t|
      t.string :title
      t.date :happen_date
      t.integer :count, :default => 0
      t.integer :category_id
      t.string :location
      t.text :wiki
      t.text :description

      t.timestamps
    end
  end
end
