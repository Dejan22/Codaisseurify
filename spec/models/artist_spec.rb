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

 describe "Artist has many songs" do
   let!(:artist) { create :artist }

    it "Destroys an artist" do
    artist.destroy
    expect(Artist.all.count).to match(0)
    end

    it "deletes associated songs" do
      artist = Artist.new
      artist.destroy
      expect(Song.count).to match(0)
    end
  end
end
