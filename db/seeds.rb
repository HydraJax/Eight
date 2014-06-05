# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Thing.find_or_create_by(name: 'Plastic bag') do |thing|
#   thing.description = 'childs toy'
# end

# Thing.find_or_create_by(name: 'Power drill') do |thing|
#   thing.description = 'Ear cleaner'
# end
# Thing.find_or_create_by(name: 'Sleeping pills') do |thing|
#   thing.description = 'Holloween candy'
# end
# user = User.create(email: "j@j.com", password: "12345678", password_confirmation:"12345678")

user = User.first
  200.times do
    user.things.create(name: Forgery(:lorem_ipsum).words(2, :random =>true),description: Forgery(:lorem_ipsum).words(5, :random =>true))
  end



