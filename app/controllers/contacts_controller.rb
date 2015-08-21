class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)

  	if @contact.valid?
  		Contacts.contact_us(@contact).deliver
  		redirect_to root_path, notice: "Thank you for your message"
  	else
  		render :new
  	end
  end

  private
  def contact_params
  	params.require(:contact).permit(:email, :name, :content)
  end
end
