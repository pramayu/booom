require 'test_helper'

class ReviewerMailerTest < ActionMailer::TestCase
  test "reviewer_activation" do
    mail = ReviewerMailer.reviewer_activation
    assert_equal "Reviewer activation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
