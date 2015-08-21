class EnquiryMailer < ActionMailer::Base
	default to: "team@stutern.com"
  
  def enquire_now(enquire)
    @enquire = enquire

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end