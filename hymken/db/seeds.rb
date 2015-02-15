# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Grade.create([
	{name: "学部4年"}, 
	{name: "修士1年"}, 
	{name: "修士2年"}, 
	{name: "博士1年"}, 
	{name: "博士2年"}, 
	{name: "博士3年"}])

Course.create([
	{name: "D"}, {name: "I"}])