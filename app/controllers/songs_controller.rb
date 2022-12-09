class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song) #=> /songs/243
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    raise
    # @songs = Song.where(title: params[:query]) # first example on routes
    @songs = Song.where(title: params[:name])
  end

  private

  def song_params
    params.require(:song).permit(:title, :category, :year)
  end
end
