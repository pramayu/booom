class ReviewerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reviewer_mailer.reviewer_activation.subject
  #
  def reviewer_activation(user)
    @user = user
    mail to: user.email, subject: "Account Activation"
   
  end
end
