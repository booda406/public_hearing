class RetypeUserIdToPost < ActiveRecord::Migration
  def change
  	change_column :posts, :user_id, 'integer USING CAST(column_to_change AS integer)'
  end
end
