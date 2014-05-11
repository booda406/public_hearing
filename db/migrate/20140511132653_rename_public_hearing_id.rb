class RenamePublicHearingId < ActiveRecord::Migration
  def change
  	rename_column :posts, :public_hearing_id, :hearing_conference_id
  end
end
