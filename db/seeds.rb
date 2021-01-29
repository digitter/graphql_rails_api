# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  post = Post.create!(title: Faker::Lorem.characters(number: 5), body: Faker::Lorem.characters(number: 10))
  10.times { post.comments.create!(content: Faker::Lorem.characters(number: 5)) }
end
