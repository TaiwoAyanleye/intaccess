# Preview all emails at http://localhost:3000/rails/mailers/enquiry_mailer
class EnquiryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enquiry_mailer/enquire_now
  def enquire_now
    EnquiryMailer.enquire_now
  end

end
