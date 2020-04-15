5.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
  Post.create(title: Faker::Movies::BackToTheFuture.character, body: Faker::Movies::BackToTheFuture.quote, user_id:1)
  Post.create(title: Faker::Movies::Ghostbusters.character, body: Faker::Movies::Ghostbusters.quote, user_id:2)
  Post.create(title: Faker::Movies::HarryPotter.character, body: Faker::Movies::HarryPotter.quote, user_id:3)
  Post.create(title: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote, user_id:4)
  Post.create(title: Faker::Movies::StarWars.droid, body: Faker::Movies::StarWars.quote, user_id:5)
end