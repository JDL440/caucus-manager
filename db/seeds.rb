# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  CongressionalDistrict.where(name: "#{i+1}").first_or_create
end

49.times do |i|
  LegislativeDistrict.where(name: "#{i+1}").first_or_create
end

