class EventAttendeesController < ApplicationController

  # CREATE

  #   @event = Event.find(params[:event_id])
  #   @event_attendees = EventAttendee.new(event_attendees_params)
  #   @event.event_attendees = @event
  #   @event_attendees.user = current_user
  #   @event_attendees.total_price = @event_attendees.calculate_total_price
  #       if @event_attendees.save
  #         redirect_to #straming link?
  #       else
  #         render :new
  #       end

  private

  def event_attendees_params
    params.require(:event_attendees).permit(:streaming_link)
  end
end
