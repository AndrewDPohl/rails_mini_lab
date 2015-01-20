# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..100).each do
  user_params = Hash.new
  user_params[:email] = Faker::Internet.email
  user_params[:first_name] = Faker::Name.first_name
  user_params[:last_name]  = Faker::Name.last_name
  user_params[:password] = "password"
  new_user = User.create(user_params)

  (1..10).each do
    new_article = Article.new
    new_article.title = Faker::HipsterIpsum.words(rand(8)+2).join(" ")
    new_article.content = Faker::HipsterIpsum.paragraphs(1+ rand(4)).join("\n")
    new_article.save
    new_user.articles.push new_article
  end
end