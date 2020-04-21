5.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
  Post.create(character: Faker::Movies::BackToTheFuture.character, quote: Faker::Movies::BackToTheFuture.quote, user_id:1)
  Post.create(character: Faker::Movies::Ghostbusters.character, quote: Faker::Movies::Ghostbusters.quote, user_id:2)
  Post.create(character: Faker::Movies::HarryPotter.character, quote: Faker::Movies::HarryPotter.quote, user_id:3)
  Post.create(character: Faker::Movies::PrincessBride.character, quote: Faker::Movies::PrincessBride.quote, user_id:4)
  Post.create(character: Faker::Movies::StarWars.droid, quote: Faker::Movies::StarWars.quote, user_id:5)
end