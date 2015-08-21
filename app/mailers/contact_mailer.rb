class ContactMailer < ActionMailer::Base
	default to: "team@stutern.com"
  
  def contact_us(message)
    @message = message

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end
