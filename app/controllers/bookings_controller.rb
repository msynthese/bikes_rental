class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit]

  # before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # before_action :logged_in_user, only: [:show, :edit, :index, :new, :create, :destroy]
  # before_action :logged_in_as_admin, only: [:destroy]
  # before_action :can_destroy, only: [:destroy]

  def index
    @booking = Booking.all
    # bookings = Booking.order(customer_name:)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
  end

  def create
    @booking = Booking.new
    # @booking = Booking.new(params[:id])
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.status = :pending
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      puts @booking.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end



  # def update
  #   @booking = Booking.find(params[:id])

  #   if @booking.update(booking_params)
  #     redirect_to @booking
  #   else
  #     render :new, status: { bookings: booking }
  #   end
  # end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy

  #   redirect_to root_path, status: :see_other
  # end

private

  def booking_params
    params.require(:booking).permit()
  end
end
