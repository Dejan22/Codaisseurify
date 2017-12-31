require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Validations" do
    it "is invalid without a title" do
      song = Song.new(title: nil)
      song.valid?
      expect(song.errors).to have_key(:title)
    end

    it "is invalid without album" do
      song = Song.new(album: nil)
      song.valid?
      expect(song.errors).to have_key(:album)
    end
  end

  describe "association with artist" do
    let(:artist) { create :artist }

    it "belongs to a artist" do
      song = artist.songs.build

      expect(song.artist).to eq(artist)
    end
  end

end
