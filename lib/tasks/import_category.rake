require 'csv'
namespace :import_categories do
  task :create_categories => :environment do
  	puts "Importing categories..."
  	Category.delete_all
	CSV.foreach(Rails.root.join("categories.csv"), headers: true) do |row|
		Category.create! do |category|
			category.id = row[0]
			category.name = row[1]
		end
	end
	puts "...categories seeded"
  end
end 