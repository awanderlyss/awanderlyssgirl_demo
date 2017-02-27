class ChatRoomsController < ApplicationController
  def index
    if current_user.admin
      @chat_rooms = ChatRoom.all
    else
      @chat_room = ChatRoom.find_by(user: current_user.id)
      redirect_to chat_room_path(@chat_room)
    end
  end

  def show
    # Messages should be displayed when a user enters a chat room
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = current_user.chat_rooms.build(chat_room_params)
    if @chat_room.save
      redirect_to chat_rooms_path
    else
      render 'new'
    end
  end

  private

    def chat_room_params
      params.require(:chat_room).permit(:title)
    end
end
