class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(messagereviewer)
    ActionCable.server.broadcast "teams:#{messagereviewer.team.id}", {
      messagereviewer: MessagereviewersController.render(messagereviewer),
        team_id: messagereviewer.team.id
    }
  end
end
