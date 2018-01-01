require 'rails_helper'

describe "Viewing an individual artist" do
  let(:artist) { create :artist }
  let!(:song1) { create :song, title: "Title1", artist: artist }

  it "shows the songss details" do
    visit song_url(artist)

    expect(page).to have_text(artist.first_name)
    expect(page).to have_text(artist.last_name)
    expect(page).to have_text(song.title)
    expect(page).to have_text(song.album)

  end
end
