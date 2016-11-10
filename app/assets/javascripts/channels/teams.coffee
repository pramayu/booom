App.teams = App.cable.subscriptions.create "TeamsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	$("[data-behavior='messagereviewers'][data-team-id='#{data.team_id}']").append(data.messagereviewer)
  	$('.msg_bgdf').scrollTop($('.msg_bgdf').prop("scrollHeight"))

  send_message: (team_id, messagereviewer) ->
  	@perform "send_message", {team_id: team_id, content: messagereviewer}
