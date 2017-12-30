Song.delete_all
Artist.delete_all

parker = Artist.create(artist_name: "Charlie 'Bird' Parker", first_name: "Charles Christopher", last_name: "Parker junior", genre: "Jazz", image_url: "http://res.cloudinary.com/cdncloudmagic/image/upload/v1485073936/Artists/charlie-parker.jpg")

davis = Artist.create(artist_name: "Miles Davis", first_name: "Miles Dewey", last_name: "Davis III", genre: "Jazz", image_url: "http://res.cloudinary.com/cdncloudmagic/image/upload/v1485075218/Artists/miles-davis.jpg")

gillespie = Artist.create(artist_name: "Dizzy Gillespie", first_name: "John Birks 'Dizzy'", last_name: "Gillespie", genre: "Jazz", image_url: "http://res.cloudinary.com/cdncloudmagic/image/upload/v1485073936/Artists/dizzy-gillespie.jpg")

jamal = Artist.create(artist_name: "Ahmad Jamal", first_name: "Frederick Russell", last_name: "Jones", genre: "Jazz", image_url: "http://res.cloudinary.com/cdncloudmagic/image/upload/v1485075374/Artists/ahmad-jamal.jpg")

song1 = Song.create(title: "Autumn in New York", album: "The Complete Verve Master Takes", release_date: "2003")

song2 = Song.create(title: "Relaxin' at Camarillo", album: "Stupendous", release_date: "2009")

song3 = Song.create(title: "Parker's Mood", album: "Parker's Mood", release_date: "2009")

song4 = Song.create(title: "So What", album: "Kind Of Blue", release_date: "1959")

song5 = Song.create(title: "Flamenco Sketches", album: "Kind Of Blue", release_date: "1959")

song6 = Song.create(title: "'Round Midnight", album: "'Round About Midnight", release_date: "1957")

song7 = Song.create(title: "Blues 'N' Boogie", album: "Groovin' High", release_date: "2010")

song8 = Song.create(title: "'Groovin' High", album: "Groovin' High", release_date: "2010")

song9 = Song.create(title: "Desafinado", album: "Dizzy On The French Riviera", release_date: "2009")

song10 = Song.create(title: "Ahmad's Blues", album: "Ahmad's Blues", release_date: "1994")

song11 = Song.create(title: "But Not For Me", album: "At The Pershing-But Not For Me", release_date: "1988")

song12 = Song.create(title: "Old Devil Moon", album: "Poinciana", release_date: "1951")

parker.songs << [song1, song2, song3]
parker.save

davis.songs << [song4, song5, song6]
davis.save

gillespie.songs << [song7, song8, song9]
gillespie.save

jamal.songs << [song10, song11, song12]
jamal.save
