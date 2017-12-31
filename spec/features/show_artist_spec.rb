require 'rails_helper'

describe "Viewing an individual artist" do
  let(:artist) { create :song }

  it "shows the songss details" do
    visit song_url(song)

    expect(page).to have_text(song.title)
    expect(page).to have_text(song.album)

  end
end
