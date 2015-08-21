class EnquiriesController < ApplicationController
  def new
  	@enquiry = Enquiry.new
  end

  def create
  	@enquiry = Enquiry.new(enquiry_params)

  	if @enquiry.valid?
  		Enquiries.enquire_now(@enquiry).deliver
  		redirect_to root_path, notice: "Thank you for your message"
  	else
  		render :new
  	end
  end

  private
  def enquiry_params
  	params.require(:enquiry).permit(:email, :product_name, :enquiry)
  end
end


