class Enquiry
	include ActiveModel::Model
	attr_accessor :email, :product_name, :enquiry

	validates :email, :product_name, :enquiry, presence: true
end