namespace :db do
  desc "Create 100 products with random names, avatars, desc, price, brands, categories"
  task :populate => :environment do
  	require 'populator'
	require 'faker'
	Product.populate 100 do |p|
		p.name = Faker::Name.title
		p.description = Faker::Lorem.paragraph
		# p.image = Faker::Avatar.image("husky.png")
		p.price = Faker::Number.digit
		p.brand_id = Faker::Number.between(1, 7)
		p.category_id = Faker::Number.between(1, 5)
	end
	puts "Products populated :)"
	Product.all.each { |p| p.image = File.open(Dir.glob(File.join(Rails.root, 'product_images', '*')).sample); p.save! }
  end
end