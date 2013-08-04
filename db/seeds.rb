# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({name: 'dave', email: 'dave@1morepx.com', username: 'daegren'})
user.password = 'foobar'

user.save!

harley = Comic.create({
  title: 'New 52: Harley #1',
  author: user
})
harley.pages.create({
  title: 'Cover Page',
  page_image: 'assets/seeds/harley1.jpg'
})
harley.first_page = harley.pages.first

harley.save!

flash = Comic.create({
  title: 'New 52: Flash #1',
  author: user
})
flash.pages.create({
  title: 'Cover Page',
  page_image: 'assets/seeds/flash1.jpg'
})

flash.first_page = flash.pages.first
flash.save!