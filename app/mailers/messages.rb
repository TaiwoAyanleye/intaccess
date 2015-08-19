class Messages < ApplicationMailer
	default to: "onlyyouandty@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messages.enquire.subject
  #
  def enquire(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.product_name, body: @msg.content
  end
end
