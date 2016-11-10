class ContactMailer < ApplicationMailer

	def contact_me(msg, sender)
		@msg = msg
		@sender = sender

		mail to: @msg.email, from: @sender.email, subject: @msg.subject, content: @msg.content
	end
end
