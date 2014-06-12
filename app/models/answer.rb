class Answer < ActiveRecord::Base
	belongs_to :hearing_conferences
	has_many :get_scores
	has_many :scores, through: :get_scores
end
