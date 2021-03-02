class EventsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # Add query when implementing search bar
    @events = Event.all
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
    @event.user = current_user
      if @event.save
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

  private

  # PARAMS

  def event_params
    params.require(:event).permit(:event_name, :description, :price_cents, :start_time, :end_time, :city, :country, :photo)
  end
end
