Photo.destroy_all
Song.delete_all
Artist.delete_all

artist1 = artist.create!(music_genre: "Snoop")
artist2 = artist.create!(music_genre: "James")
artist3 = artist.create!(music_genre: "Afro")

artists_count = artist.all.length
puts "#{artists_count} artists were created."

Song.create!([
  { music_genre: "Hiphop", producer_name: "Djkhalid", remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542093/DJkhalid_ndjhit.jpg", artist: artist1 },
  { music_genre: "Dance", producer_name: "Tupac", remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542099/2pac_so2cox.jpg", artist: artist2 },
  { music_genre: "Rock", producer_name: "Ali", remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542106/aliB_ugxosa.jpg", artist: artist3 },
])

songs_count = Song.all.length
puts "#{songs_count} songs were created."

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542093/DJkhalid_ndjhit.jpg", song: song_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542099/2pac_so2cox.jpg", song: song_2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542106/aliB_ugxosa.jpg", song: song_3)
