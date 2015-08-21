require 'test_helper'

class EnquiryMailerTest < ActionMailer::TestCase
  test "enquire_now" do
    mail = EnquiryMailer.enquire_now
    assert_equal "Enquire now", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
