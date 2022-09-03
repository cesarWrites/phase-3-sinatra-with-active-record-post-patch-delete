puts "🌱 Seeding data..."

# Make 10 users
10.times do
  Reader.create(name: Faker::Name.name)
end

# Make 50 articles
#50.times do
  # create a game with random data
  article1 = Article.create(
    title: "Ruby for beginners",
    author:" Mike Franklin",
    year: 2018,
  )

  article2 = Article.create(
    title: "eloquent javascript",
    author:" Martin Johns",
    year: 2018,
  )

  # create between 1 and 5 reviews for each article
  rand(1..5).times do
    # get a random user for every review
    # https://stackoverflow.com/a/25577054
    reader = Reader.order('RANDOM()').first

    # A review belongs to a game and a user, so we must provide those foreign keys
    View.create(
      rating: rand(1..10),
      comment: Faker::Lorem.sentence,
      article_id: article.id,
      #reader_id: reader.id
    )

end

puts "🌱 Done seeding!"
