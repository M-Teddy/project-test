class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @bookings = Booking.where(user: current_user)
    @cars = Car.where(user: current_user)
  end
end
