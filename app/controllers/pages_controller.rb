class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
  end

  def search
    # @events = Event.all
    if params[:query].present?
      # @events = Event.where("event_name ILIKE ?", "%#{params[:query]}%")
      @artists = PgSearch.multisearch(params[:query]).where(searchable_type: 'User')
      @events = PgSearch.multisearch(params[:query]).where(searchable_type: 'Event')
      @genres = PgSearch.multisearch(params[:query]).where(searchable_type: 'Genre')
    else
      # @events = Event.all
    end
  end
end
