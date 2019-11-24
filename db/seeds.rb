# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
	artist = Artist.create(name: Faker::Music.band, bio: Faker::Lorem.paragraph)
	genre = Genre.create(name: Faker::Music.genre)
	song = Song.create(name: Faker::Music::Phish.song, genre_id: genre.id, artist_id: artist.id)
end