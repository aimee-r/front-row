class EventGenresController < ApplicationController

    def create
    @event = Event.find(params[:event_id])
    @event_genre = EventGenre.new(event_genre_params)
    @event_genre.event = @event
    if @event_genre.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  def destroy
    @event_genre = EventGenre.find(params[:id])
    @event_genre.destroy
    redirect_to event_path(@event_genre.event)
  end

  private

  def event_genre_params
    params.require(:event_genre).permit(:event_id, :genre_id)
  end
end

end
