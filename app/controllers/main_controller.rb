class MainController < ApplicationController

	def index
		@hearingconferences = HearingConference.order('count DESC').limit(3)
		@posts = Post.order('count DESC').limit(3)
	end

	def search
		if params[:order]
			@hearingconferences = HearingConference.order(params[:order])
		else
			@hearingconferences = HearingConference.order('happen_date DESC')
		end
	end

	def report
		
	end

	def user_page
		@user = User.find(params[:id])
		@posts = Post.where(:user_id => @user.id)
		@hearingconferences = @user.following_by_type('HearingConference')
		@users = @user.following_users
	end

	def follow
		@user = User.find(params[:user_id])
    	current_user.follow(@user)
    	redirect_to user_page_path(@user.id)
	end

	def unfollow
		@user = User.find(params[:user_id])
		current_user.stop_following(@user)
		redirect_to user_page_path(@user.id)
	end

end
