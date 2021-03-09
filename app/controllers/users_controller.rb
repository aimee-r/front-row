class UsersController < ApplicationController
  def index
    @users = User.where(artist: true)
  end

  def show
    @user = User.find(params[:id])
    artists = RSpotify::Artist.search(@user.artist_name)
    @artist = artists.first
  end

  def account
    @events = Event.all
  end
end
