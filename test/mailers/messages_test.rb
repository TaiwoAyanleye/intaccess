require 'test_helper'

class MessagesTest < ActionMailer::TestCase
  test "enquire" do
    mail = Messages.enquire
    assert_equal "Enquire", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
