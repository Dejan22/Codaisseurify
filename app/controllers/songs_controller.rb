class SongsController < ApplicationController
  before_action :set_song, only: [:new, :create, :destroy]

  def index
    @songs = Song.all
  end

  def show
    @songs = Song.all
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)
    @song.artist_id = params[:artist_id]

    if @song.save
      redirect_to @song.artist, notice: "Song successfully created"
    else
      render :new
    end
  end

  def destroy
    @song.destroy

    redirect_to @song.artist, notice: "Song successfully removed."
  end

  private

  def set_song
    @song = Song.find_by_id(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :album, :album_track_number, :release_date, :artist_id)
  end
end
