require 'rails_helper'

describe "Current artist viewing the list of songs" do

  let!(:artist) { create :song, first_name: "First Name 1", last_name: "Last Name 1", title: "Song Name 1"}


  it "shows all his songs" do
    visit artist_url

    expect(page).to have_text("Song Name 1")

  end


end
