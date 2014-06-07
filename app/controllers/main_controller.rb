class MainController < ApplicationController

	def index
		@hearingconferences = HearingConference.order('count DESC').limit(4)
		@posts = Post.order('count DESC').limit(4)
	end

	def search
		
	end

	def report
		
	end

	def user_page
		@posts = Post.where(:user_id => current_user.id)
	end

end
