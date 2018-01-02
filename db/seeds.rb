Song.delete_all
Artist.delete_all

parker = Artist.create(artist_name: "Charlie 'Bird' Parker", first_name: "Charles Christopher", last_name: "Parker junior", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731279/5716976_139217257_ep7nwa.png")

davis = Artist.create(artist_name: "Miles Davis", first_name: "Miles Dewey", last_name: "Davis III", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731276/160830-joiner-miles-davis-cool-embed-1_jejltf_om1lg0.png")

gillespie = Artist.create(artist_name: "Dizzy Gillespie", first_name: "John Birks 'Dizzy'", last_name: "Gillespie", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731287/Dizzy_Gillespie531_cbhwne.png")

jamal = Artist.create(artist_name: "Ahmad Jamal", first_name: "Frederick Russell", last_name: "Jones", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731284/Ahmad-Jamal-3_Photo-Credit-Jean-Marc-Lubrano-copy-1-square_usmyk5.png")

dave = Artist.create(artist_name: "Dave Brubeck", first_name: "David Waren", last_name: "Brubeck", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731274/54cbfdad5e7a91c528234efd_image_ujrudr.png")

james = Artist.create(artist_name: "James Carter", first_name: "James", last_name: "Carter", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731291/James-Carter-8-Photo-Credit-Vincent-Soyez_qkpt3g.png")

song1 = Song.create(title: "Autumn in New York", album: "The Complete Verve Master Takes", release_date: "01.12.2003")

song2 = Song.create(title: "Relaxin' at Camarillo", album: "Stupendous", release_date: "06.02.2009")

song3 = Song.create(title: "Parker's Mood", album: "Parker's Mood", release_date: "3.3.2009")

song4 = Song.create(title: "So What", album: "Kind Of Blue", release_date: "11.11.1959")

song5 = Song.create(title: "Flamenco Sketches", album: "Kind Of Blue", release_date: "17.04.1959")

song6 = Song.create(title: "'Round Midnight", album: "'Round About Midnight", release_date: "12.03.1957")

song7 = Song.create(title: "Blues 'N' Boogie", album: "Groovin' High", release_date: "15.12.2010")

song8 = Song.create(title: "'Groovin' High", album: "Groovin' High", release_date: "18.2.2010")

song9 = Song.create(title: "Desafinado", album: "Dizzy On The French Riviera", release_date: "3.3.2009")

song10 = Song.create(title: "Ahmad's Blues", album: "Ahmad's Blues", release_date: "7.7.1994")

song11 = Song.create(title: "But Not For Me", album: "At The Pershing-But Not For Me", release_date: "12.3.1988")

song12 = Song.create(title: "Old Devil Moon", album: "Poinciana", release_date: "15.3.1951")

song13 = Song.create(title: "Blue Rondo a la Turk", album: "Time Out", release_date: "17.8.1959")

song14 = Song.create(title: "Strange Meadow Lark", album: "Time Out", release_date: "20.3.1959")

song15 = Song.create(title: "Take Five", album: "Time Out", release_date: "20.3.1959")

song16 = Song.create(title: "Free Reaggae HiBop", album: "Conversin' with the Elders", release_date: "18.12.1996")

song17 = Song.create(title: "Parker's Mood", album: "Conversin' with the Elders", release_date: "18.12.1996")

parker.songs << [song1, song2, song3]
parker.save

davis.songs << [song4, song5, song6]
davis.save

gillespie.songs << [song7, song8, song9]
gillespie.save

jamal.songs << [song10, song11, song12]
jamal.save

dave.songs << [song13, song14, song15]
dave.save

james.songs << [song16, song17]
james.save
