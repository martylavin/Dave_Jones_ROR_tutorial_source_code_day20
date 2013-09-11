# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include Faker
zone = ActiveSupport::TimeZone.new("Central Time (US & Canada)")
Recipe.delete_all
puts Company.name

images = [ 'rails.png', 'Orange.gif', 'Pear.gif', 'Strawberry.gif', 'applepie.jpg' ]

12.times do 
	a = Recipe.create( :name => Company.bs,
									:serves => rand(2..12),
									:cost => ((rand * 200).to_i ) / 10,
									:last_made => Time.now.in_time_zone(zone),
									:made_by => Company.name,
									:ingredients  => Lorem.paragraphs(rand(1..4)).join("<br/>"),
									:image => images[rand(0..4)]
									#:image => images[rand(0..images.length)]
									#:image => 'rails.png'
	)
	puts a.inspect
end

