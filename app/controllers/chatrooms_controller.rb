class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:rooms_id])
  end
end
