class PinsController < ApplicationController
  before_action :set_pin, only: [:show]

  def index
    @pins = Pin.all.order('created_at DESC')
  end

  def show
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = current_user.pins.build(pin_params)
    if @pin.save
      redirect_to pin_path(@pin), notice: 'Success'
    else
      render :new
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

  def set_pin
    @pin = Pin.find(params[:id])
  end
end
