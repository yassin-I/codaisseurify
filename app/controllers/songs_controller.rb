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
  song_params = params.require(:song).permit(:music_genre, :producer_name, :image_url)

  @song = song.new(song_params)

  if @song.save
     redirect_to @song
  else
     render 'new'
  end
  end
  def edit
  @song = Song.find(params[:id])
  end
end
