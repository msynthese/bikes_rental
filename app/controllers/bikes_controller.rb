class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit]

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bikes_path(@bike)
    else
      puts @bike.errors.messages
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bikes = Bike.all
  end

  def show
  end

  def bikes_owner
    # @bikes = Bike.find(params[:current_user])
    # @bikes = Bike.where

  end


  private

  def bike_params
    params.require(:bike).permit(:name, :category, :size, :price, :location, :picture_url, :description, :lat, :lon)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
