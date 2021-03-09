class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show search]

  def index
    # Add query when implementing search bar
    if params[:query].present?
      @query = params[:query]
      @events = Event.select { |event| event.genres.include?(Genre.find_by(name: params[:query])) }
    else
      @events = Event.all
    end
    @search = params[:search]
      # @events = Event.all
  end

  # NEW
  def new
    @event = Event.new
  end

  # SHOW
  def show
    @event = Event.find(params[:id])
  end

  # CREATE
  def create
    @event = Event.new(event_params)
    @event_genre = params[:event][:genre_ids].reject(&:blank?)
    @event.user = current_user
    if @event.save!
      @event_genre.each do |genre|
        EventGenre.create!(
          event_id: @event.id,
          genre_id: genre.to_i
        )
      end
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  # DESTROY
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  # UPDATE
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def search
    if params[:query].present?
      # @events = Event.where("event_name ILIKE ?", "%#{params[:query]}%")
      @artists = PgSearch.multisearch(params[:query]).where(searchable_type: 'User')
      @events = PgSearch.multisearch(params[:query]).where(searchable_type: 'Event')
      @genres = PgSearch.multisearch(params[:query]).where(searchable_type: 'Genre')
      # elsif params[:query].empty?
      #   alert()
    else
      @events = Event.all
    end
    respond_to do |format|
      format.html { render partial: 'events/search', locals: { artists: @artists, events: @events, genres: @genres } }
    end
  end

  private

  # PARAMS

  def event_params
    params.require(:event).permit(:event_name, :description, :price_cents, :start_time, :end_time, :city, :country, :photo)
  end
end
