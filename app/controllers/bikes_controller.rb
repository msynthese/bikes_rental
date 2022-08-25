class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit]

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to my_bikes_path
    else
      puts @bike.errors.messages
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bikes = Bike.all
  end

  def show
    if @bike.photo.key
      @image_result = @bike.photo.key
    else
      @image_result = "No Image"
    end
  end

  def bikes_owner
    @bikes = Bike.where(user_id: current_user)
  end

  private

  def bike_params
    params.require(:bike).permit(
      :name,
      :category,
      :size,
      :price,
      :address,
      :picture_url,
      :description,
      :lat,
      :lon,
      :title,
      :body,
      :photo
    )
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
