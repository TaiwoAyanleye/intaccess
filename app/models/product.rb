class Product < ActiveRecord::Base
	paginates_per 6
	 mount_uploader :image, ImageUploader
	 belongs_to :brand
	 belongs_to :category
	 # has_many :messages

	 validates :name, uniqueness: true
end
