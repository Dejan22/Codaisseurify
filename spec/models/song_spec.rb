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

    it "is invalid without album" do
      song = Song.new(release_date: nil)
      song.valid?
      expect(song.errors).to have_key(:release_date)
    end

    describe "association with artist" do
    it { is_expected.to belong_to :artist}
    end
  end
end
