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
		@user = User.find(params[:id])
		@posts = Post.where(:user_id => @user.id)
		@hearingconferences = @user.follows_by_type('HearingConference')
		@users = @user.following_users
	end

	def follow
		@user = User.find(params[:user_id])
    	current_user.follow(@user)
    	redirect_to user_page_path(@user.id)
	end

end
