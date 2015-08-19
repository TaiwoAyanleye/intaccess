class Message
	include ActiveModel::Model
	attr_accessor :product_name, :product_number, :email, :content, :phone

	validates :product_name, :product_number, :email, presence: true
end