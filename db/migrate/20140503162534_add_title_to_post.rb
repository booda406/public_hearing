class AddTitleToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :title, :string
  	add_column :posts, :cover_photo, :string
  end
end
