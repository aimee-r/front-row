class MessagesController < ApplicationController
  # CREATE
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    @message.event_id = @chatroom.room.event.id
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message",
        locals: { message: @message })
      )

      # redirect_to room_path(@chatroom.room, anchor: "message-#{@message.id}")
    else
      render "rooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
