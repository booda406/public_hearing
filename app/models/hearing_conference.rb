class HearingConference < ActiveRecord::Base
	acts_as_taggable_on :tags
	mount_uploader :photo, CoverPhotoUploader

  	acts_as_followable

	has_many :posts
	belongs_to :category
	has_many :questions
	has_many :answers

end
