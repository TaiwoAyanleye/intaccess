class MessagesController < ApplicationController
	def new
    	@message =Message.new
    	# @product = Product.find(params[:product_id])
  	end

  	def create
	    @message = Message.new(message_params)
	    # @product = Product.find(params[:product_id])

	    if @message.valid?
	      Messages.enquire(@message).deliver_now
	      redirect_to root_path, notice: "Thank you for your message"
	    else
	      render :new
	    end
  	end

	private
	def message_params
	params.require(:message).permit(:product_name, :product_number, :email, :content, :phone)
	end
end

