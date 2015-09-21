

class SongsController < ApplicationController

before_filter :prepare_artists

  def index
    @songs = Song.all
  end

  def show
    @song = get_song
    @artists = Artist.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end


  def edit
    @song = get_song
  end

  def update
    @song = get_song
    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    @song = get_song
    @song.destroy
    redirect_to songs_path
  end




  private

    def song_params
      params.require(:song).permit(:title, :length, :genre, :year, :artist_id, :lyrics)
    end

    def get_song
      Song.find(params[:id])
    end

    def prepare_artists
      @artists = Artist.all
    end

end
