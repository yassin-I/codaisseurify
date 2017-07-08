Song.delete_all
Artist.delete_all

artist1 = artist.create!(name: "Snoop")
artist2 = artist.create!(name: "James")
artist3 = artist.create!(name: "Afro")

artists_count = artist.all.length
puts "#{artists_count} artists were created."

Song.create!([
  { name: "Iguanodon", age: 3, image_url: "https://goo.gl/i0S0iv", artist: artist1 },
  { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/MYf6Sc", artist: artist2 },
  { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/bS5SdS", artist: artist3 },
])

songs_count = Dinosaur.all.length
puts "#{songs_count} songs were created."
