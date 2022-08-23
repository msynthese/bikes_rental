class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit]

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)  #bike_params equiv (params[:bike])
    if @bike.save #How come just a if statement triggers a save?
      redirect_to bikes_path  #=> redirects to the index bikes
      # redirect_to bike_path(@bike) #=> OR redirects to the created record
    else
      puts @bike.errors.messages
      render :new, status: :unprocessable_entity #=>??What's the new about
    end
  end

  def index
    @bikes = Bike.all
  end

  def show
  end


  private

  def bike_params
    params.require(:bike).permit(:name, :category, :size, :price, :location, :picture_url, :description)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
