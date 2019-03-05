require 'test_helper'

class ArchRequestMailerTest < ActionMailer::TestCase
  test "confirm_request" do
    mail = ArchRequestMailer.confirm_request
    assert_equal "Confirm request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "approve" do
    mail = ArchRequestMailer.approve
    assert_equal "Approve", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
