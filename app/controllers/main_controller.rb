class MainController < ApplicationController

	def index
		@hearingconferences = HearingConference.order('count DESC').limit(4)
		@posts = Post.order('count DESC').limit(4)
	end

	def search
		
	end

	def report
		
	end
end
