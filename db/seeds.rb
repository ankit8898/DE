# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = [{email: 'ankit.gupta8898@gmail.com'}]

	users.each do |hsh|
		user = User.create(
			email: hsh[:email],
			password: 'P@ssw0rd', 
			password_confirmation: 'P@ssw0rd')

		puts "Created User - #{user.email}"

	end
