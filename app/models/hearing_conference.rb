class HearingConference < ActiveRecord::Base
	acts_as_taggable_on :tags
	mount_uploader :photo, CoverPhotoUploader

	has_many :posts
end
