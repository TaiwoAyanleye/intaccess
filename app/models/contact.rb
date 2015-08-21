class Contact
	include ActiveModel::Model
	attr_accessor :email, :name, :content

	validates :email, :content, :name, presence: true
end