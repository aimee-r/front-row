class EventsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # Add query when implementing search bar
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
      if @event.save
        redirect_to event_path(@event)
      else
        render :new
      end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def update
    @event = Event.find(params[:id])
     if @event.update(event_params)
       redirect_to event_path(@event)
     else
       render :edit
     end
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :description, :price_cents, :start_time, :end_time, :city, :country)
  end
end
