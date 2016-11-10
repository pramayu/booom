# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class TeamsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "teams:#{current_user.team.id}"
  end

  def unsubscribed
  	stop_all_streams
  end

  def send_message(data)
  	@team = Team.find(data["team_id"])
  	messagereviewer = @team.messagereviewers.create(content: data["content"], user: current_user)
  	MessageRelayJob.perform_later(messagereviewer)
  end
end
