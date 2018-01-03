class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]


  def index
    @artist = Artist.all.order(params[:sort])
      @artists = Artist.all
  end

  def show
    @artists = Artist.first

  end

  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.new(artist_params)

    if @artist.save
        redirect_to @artist, notice: "Artist created"
    else
      render :new
    end
  end

  def destroy
    @artist.destroy
    redirect_to root_path, notice: "Artist successfully removed."
  end

  private

  def set_artist
    @artist = Artist.find_by_id(params[:id])
  end

  def artist_params
    params.require(:artists).permit(:artist_name, :first_name, :last_name, :genre, :image_url, :songs_id)
  end
end
