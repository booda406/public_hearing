class Post < ActiveRecord::Base
	mount_uploader :cover_photo, CoverPhotoUploader
end
