$(document).on "turbolinks:load", ->
	$("#new_messagereviewer").on 'keypress', (e) ->
		if e && e.keyCode == 13
			e.preventDefault()
			$(this).submit()
	$("#new_messagereviewer").on 'submit', (r) ->
		r.preventDefault()

		team_id = $("[data-behavior='messagereviewers']").data("team-id")
		content = $("#messagereviewer_content")

		App.teams.send_message(team_id, content.val())

		content.val("")

$(document).on "turbolinks:load", ->
	usr = $("[data-behavior='messagereviewers']").data("taan-id")
	$(".before_" + usr).css({'background-color': '#5cbbf3','color': '#fff'})
	$(".msg_bgdf").niceScroll({cursorcolor:"#c0bfbf"});
