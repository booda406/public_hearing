class HearingConference < ActiveRecord::Base
	acts_as_taggable_on :tags

	has_many :posts
end
