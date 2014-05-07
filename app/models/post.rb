class Post < ActiveRecord::Base
	mount_uploader :cover_photo, CoverPhotoUploader

	belongs_to :hearing_conference
end
