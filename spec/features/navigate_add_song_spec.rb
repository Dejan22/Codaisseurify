require 'rails_helper'

describe "Navigating add new song" do
  let!(:user) { create :user }
  let!(:artist) { create :artist, first_name: "First Name 1", last_name: "Last Name 1" }

  it "allows navigation from the detail page to the add new song page" do
    visit artist_url(artist)

    click_link "+ Save"

    expect(current_path).to eq(new_song_path)
  end


end
