require 'csv'
namespace :import_brands do
  task :create_brands => :environment do
  	puts "Importing brands..."
  	Brand.delete_all
	CSV.foreach(Rails.root.join("brands.csv"), headers: true) do |row|
		Brand.create! do |brand|
			brand.id = row[0]
			brand.name = row[1]
		end
	end
	puts "...brands seeded"
  end
end 