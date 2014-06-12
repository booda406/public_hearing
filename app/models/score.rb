class Score < ActiveRecord::Base
	has_many :get_scores
	has_many :answers, through: :get_scores
end
