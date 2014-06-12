class FixHearingConferenceColumn < ActiveRecord::Migration
  def change
  	add_column :hearing_conferences, :event, :integer
  	add_column :hearing_conferences, :law, :string
  	add_column :hearing_conferences, :president, :string
  	add_column :hearing_conferences, :organizer, :string
  	add_column :hearing_conferences, :participant, :text
  	add_column :hearing_conferences, :topics, :text
  end
end
