class Post < ActiveRecord::Base
	mount_uploader :cover_photo, CoverPhotoUploader

	belongs_to :hearing_conference
	belongs_to :user
end
