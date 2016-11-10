class MessagereviewersController < ApplicationController
	before_action :signed_in_user
	before_action :set_team


	# def create
	# 	message = @team.messagereviewers.new(params_message)
	# 	message.user = current_user
	# 	message.save
	# 	MessageRelayJob.perform_later(message)
	# end

	private

	# def params_message
	# 	params.require(:messagereviewer).permit(:content)
	# end

	def set_team
		@team = Team.find(params[:team_id])
	end
end