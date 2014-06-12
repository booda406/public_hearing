class GetScore < ActiveRecord::Base
	belongs_to :scores
	belongs_to :answers
end
