# require 'rails_helper'
#
# describe "Visitor deletes an artist" do
#   let!(:user) { create :user }
#   let!(:artist) { create :artist, artist_name: "Full name", first_name: "First Name 1", last_name: "Last Name 1", genre: "Jazz", image_url: "http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731284/Ahmad-Jamal-3_Photo-Credit-Jean-Marc-Lubrano-copy-1-square_usmyk5.png" }
#   let!(:song1) { create :song, title: "Title1", album: "Hello", release_date: "01.01.2011", artist: artist }
#
#   it "removes the artist" do
#     visit artist_url(artist)
#
#     click_link "Delete"
#     expect(page).not_to have_content("Full name")
#     expect(page).not_to have_content("First Name 1")
#     expect(page).not_to have_content("Last Name 1")
#     expect(page).not_to have_content("Jazz")
#     expect(page).not_to have_content("http://res.cloudinary.com/dpxrgcpfs/image/upload/v1514731284/Ahmad-Jamal-3_Photo-Credit-Jean-Marc-Lubrano-copy-1-square_usmyk5.png")
#     expect(page).not_to have_content("Title1")
#     expect(page).not_to have_content("Hello")
#     expect(page).not_to have_content("01.01.2011")
#   end
#
# end
