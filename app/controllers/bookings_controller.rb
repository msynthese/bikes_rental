class BookingsController < ApplicationController

  # Time.zone = 'Central European Time (CET)'

  # before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # before_action :logged_in_user, only: [:show, :edit, :index, :new, :create, :destroy]
  # before_action :logged_in_as_admin, only: [:destroy]
  # before_action :can_destroy, only: [:destroy]

  # def index
  #   @booking = Booking.all
  #   # bookings = Booking.order(customer_name:)
  # end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @booking = Booking.new
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  # def create
  #   # bike_id = booking_params[:bike_id]
  #   # user_id = booking_params[:user_id]
  #   @booking = Booking.new(booking_params)

  #   if @booking.save
  #     redirect_to @booking
  #   else
  #     render :new, status: { bookings: booking }
  #   end
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

  # def pickup
  #   @booking = Booking.find(params[:id])
  #   if @booking.checkOutTime
  # end



  # private
  # def booking_params
  #   params.require(:booking).permit()
  # end
end
