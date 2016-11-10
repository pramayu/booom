class SocialNetworksController < ApplicationController
	before_action :find_sosmed, only: [:edit, :update]
	layout "account"	
	def new
	end

	def create
		@user = User.find(params[:id])
		@sosmed = SocialNetwork.create(sosmed_params)
		@sosmed.user_id = current_user.id
		if @sosmed.save
			redirect_to dashboard_url
		else
			redirect_to themes_url
		end
	end

	def edit
	end

	def update
	end

	private 

	def find_sosmed
		@sosmed = SocialNetwork.find(params[:id])
	end

	def sosmed_params
		params.require(:social_networks).permit(:behance, :deviant, :digg, :facebook, :dribbble, :flickr, :github, :linkedin, :youtube, :twitter, :tumblr)
	end
end
