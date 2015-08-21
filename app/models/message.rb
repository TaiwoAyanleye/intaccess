class Message
	include ActiveModel::Model
	attr_accessor :product_name, :email, :content
	# belongs_to :product

	validates :product_name, :email, presence: true
end