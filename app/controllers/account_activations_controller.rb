class AccountActivationsController < ApplicationController
	def edit
		user = User.find_by(email: params[:email])
		if user && !user.activated? && user.authenticated?(:activation, params[:id])
			user.activate
			sign_in user
			redirect_to dashboard_url #for this time
		else
			redirect_to root_url
		end
	end
end
