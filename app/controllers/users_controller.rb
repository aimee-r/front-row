class UsersController < ApplicationController
  def index
    @users = User.where(artist: true)
  end

  def show
    @user = User.find(params[:id])
  end

  def account
    @events = Event.all
  end
end
