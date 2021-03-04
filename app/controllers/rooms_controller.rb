class RoomsController < ApplicationController
  before_action :authenticate_user!

    def create
    @room = Event.new(rooms_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: "Event was successfully created" }
        format.json { render :show, status: :created, location: @event}
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

    def show
      @room = Room.find(params[:id])
      opentok = OpenTok::OpenTok.new ENV["VONAGE_API_KEY"], ENV["VONAGE_API_SECRET"]
      @token = opentok.generate_token @room.vonage_session_id, { name: current_user.first_name }
    end

  def rooms_params
    params.require(:rooms).permit(:name, :vonage_session_id)
  end
end
