class AddPhotoToHearingConferences < ActiveRecord::Migration
  def change
  	add_column :hearing_conferences, :photo, :string
  end
end
