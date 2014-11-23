class RoomsController < ApplicationController

  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def show
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