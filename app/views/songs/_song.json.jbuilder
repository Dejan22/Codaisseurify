json.extract! song, :id, :title, :album, :album_track_number, :release_date, :created_at, :updated_at
json.url songs_url(song, format: :json)
