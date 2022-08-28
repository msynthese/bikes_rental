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
    tripstart = Date.parse params[:tripstart]
    tripend = Date.parse params[:tripend]
    cookies[:tripstart] = tripstart
    cookies[:tripend] = tripend
    location = params[:bike][:address]
    if location.present?
      bikes = Bike.near(location, 30)
      @bikes = bikes.select do |bike|
        bike.bookings.each do |booking|
          if booking != "rejected"
            interval_search = tripstart..tripend
            interval_booking = booking.start_at..booking.end_at
            interval_booking.overlaps? interval_search
          end
        end
      end
      puts(@bikes)
    else
      @bikes = Bike.all
    end
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
