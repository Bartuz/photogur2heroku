# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pic.create!(
	:title => "Sea Power",
	:url => "http://t3.gstatic.com/images?q=tbn:ANd9GcS3JCeFNylGCpp7YOjYQx6leOXBJWEj5c3yZlNNuuCjZrQ5B_4YIQ"
	)

Pic.create!(
	:title => "Desert Power",
	:url => "http://www.eartheasy.com/blog/wp-content/uploads/2010/04/desert-solar-power.jpg"
	)