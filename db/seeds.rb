# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:'sunny@india.com', password: '12345678', admin: true)
User.create(email:'sunnytest@india.com', password: '12345678')

User.create(email:'sumeet@gmail.com', password: '1234', admin: true)
User.create(email:'sumeet@appsclay.com', password: '1234')

# ImpField.create(name: "mobile1")
# ImpField.create(name: "primary_email")