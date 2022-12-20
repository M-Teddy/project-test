class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    @booking.price = @car.price

    # @booking.status = "pending"
    if @booking.save!
      redirect_to bookings_path
    end
  end

  def approve
    @booking = Booking.find(params[:id])
    @booking.status = "approved"
    @booking.save

    # redirect_to car_path(@car)
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save

    # redirect_to car_booking_path(@bot)
  end

  private

  def booking_params
    params.require(:booking).permit(:startdate, :enddate, :car_id, :user_id)
  end

end
