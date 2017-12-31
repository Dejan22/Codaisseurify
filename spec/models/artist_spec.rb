require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "Validations" do
    it "is invalid without a name" do
      artist = Artist.new(artist_name: nil)
      artist.valid?
      expect(artist.errors).to have_key(:artist_name)
    end

    it "is invalid without a first name" do
      artist = Artist.new(first_name: nil)
      artist.valid?
      expect(artist.errors).to have_key(:first_name)
    end

    it "is invalid without last name" do
      artist = Artist.new(last_name: nil)
      artist.valid?
      expect(artist.errors).to have_key(:last_name)
    end

    it "is invalid without a genre" do
      artist = Artist.new(genre: nil)
      artist.valid?
      expect(artist.errors).to have_key(:genre)
    end
  end

  describe "association with songs" do

    let!(:song) { create :song }

    it "has many songs" do
      song1 = artist.songs.new
      song2 = artist.songs.new

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
