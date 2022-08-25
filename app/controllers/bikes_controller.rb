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

    if params[:bike][:address].present?
      @bikes = Bike.near(params[:bike][:address], 20)
      # @bikes = Bike.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @bikes = Bike.all
    end
  end

  def show
  end

  def bikes_owner
    @bikes = Bike.where(user_id: current_user)
  end


  private

  def bike_params
    params.require(:bike).permit(:name, :category, :size, :price, :address, :picture_url, :description, :lat, :lon)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
