# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.create!(name: 'Fran', birth_date: Date.new(2013,3,4), color: "white", sex: "F", description: "So cute")
Cat.create!(name: 'Tinkles', birth_date: Date.new(2012,2,2), color: "other", sex: "M", description: "Fairly cute")

CatRentalRequest.create!(cat_id: 1, start_date: Date.today, end_date: Date.new(2016, 10, 31))
CatRentalRequest.create!(cat_id: 2, start_date: Date.today, end_date: Date.new(2016, 10, 31))
