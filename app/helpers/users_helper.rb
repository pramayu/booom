module UsersHelper
	def redirect_signed_in_user_from_signin
		redirect_to user_url(current_user) if signed_in?
	end


	def redirect_signed_in_user
		unless signed_in?
			redirect_to root_url, notice: "Please sign in."
		end
	end

	def signed_in_user
		unless signed_in?
			store_location
			redirect_to sign_in_url, notice: "Please sign in."
		end
	end

	def correct_user
		@user = User.find(params[:id])
		redirect_to dashboard_path if current_user != @user
	end

	def correct_post
		@theme = Theme.find_by_slug!(params[:id])
		redirect_to themes_path if @theme.user != current_user
	end

	def correct_code
		@code = Code.find_by_slug!(params[:id])
		redirect_to codes_path if @code.user != current_user
	end

	def correct_graphic
		@graphic = Graphic.find_by_slug!(params[:id])
		redirect_to graphics_path if @graphic.user != current_user
	end

	def correct_t3d
		@t3d = T3d.find_by_slug!(params[:id])
		redirect_to t3dreams_path if @t3d.user != current_user
	end

	def correct_video
		@video = Videofx.find_by_slug!(params[:id])
		redirect_to videofxes_path if @video.user != current_user
	end

	def correct_course
		@course = Course.find_by_slug!(params[:id])
		redirect_to courses_path if @course.user != current_user
	end

	def correct_font
		@font = Font.find_by_slug!(params[:id])
		redirect_to fonts_path if @font.user != current_user
	end

	def setup_user(user)
		user.social_network ||= SocialNetwork.new
		user
	end

	def setup_store(user)
		user.ourstore ||= Ourstore.new
		user
	end

	def current_user_is_following(current_user_id, followed_user_id)
		relationship = Follow.find_by(follower_id: current_user_id, following_id: followed_user_id)
		return true if relationship
	end

	def reviewer_path
		if current_user.reviewer == false
			redirect_to dashboard_path
		end
	end
end