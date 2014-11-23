class RoomsController < ApplicationController

  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def show
    if params[:code] && current_user != @room.user && !@room.users.include?(current_user) && params[:code] == @room.invitation_code
      RoomUser.create(user_id: current_user.id, room_id: @room.id, status: :accepted)
    end
  end

  def index
    @rooms = Room.by_status(:open)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.status = :open
    @room.user = current_user
    if @room.save
      redirect_to @room
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to @room
    else
      render :edit
    end
  end

  def destroy
    @room.status = :deleted
    @room.save
    redirect_to :root
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(
      :title, :place, :hold_at
    )
  end

end