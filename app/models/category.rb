class Category < ActiveRecord::Base
	has_many :hearing_conferences
end
