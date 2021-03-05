class EventGenresController < ApplicationController

    def create
    @event = Event.find(params[:event_id])
    @event_genre = EventGenre.new(event_genre_params)
    @event_genre.event = @event
    @event_genre.save

  end

  def destroy
    @event_genre = EventGenre.find(params[:id])
    @event_genre.destroy
  end

  private

  def event_genre_params
    params.require(:event_genre).permit(:genre_id)
  end
end
