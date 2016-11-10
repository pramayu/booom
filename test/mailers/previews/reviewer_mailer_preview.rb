# Preview all emails at http://localhost:3000/rails/mailers/reviewer_mailer
class ReviewerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reviewer_mailer/reviewer_activation
  def reviewer_activation
    ReviewerMailer.reviewer_activation
  end

end
