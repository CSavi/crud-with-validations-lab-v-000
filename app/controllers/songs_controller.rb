class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render "new"
    end
  end

  def show
    find_song
  end

  def edit
    find_song
  end

  def update
    find_song
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render "edit"
    end
  end

    def destroy
      song_params.destroy
      redirect_to songs_url
    end


  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def find_song
    @song = Song.find(params[:id])
  end
end
