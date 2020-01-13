# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post1 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
post2 = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
category1 = Category.create(name: "Cool")
category2 = Category.create(name: "Warm")
user1 = User.create(username: 'RealBigFish')
user2 = User.create(username: 'CoolGuy5')
comment1 = Comment.create(user: user1, post: post1)
comment1 = Comment.create(user: user1, post: post1)
post1.categories << category1
post2.categories << category2 
