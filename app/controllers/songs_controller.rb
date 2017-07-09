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
  def update
    @song = song.find(params[:id])

    song_params = params.require(:song).permit(:name, :age, :image_url)

  if @song.update_attributes(song_params)
      redirect_to @song
  else
      render 'edit'
  end
  end
  def destroy
   @song = Song.find(params[:id])

   @song.destroy

   redirect_to songs_path
  end
end
