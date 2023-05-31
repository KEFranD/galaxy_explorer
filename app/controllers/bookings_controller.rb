class BookingsController < ApplicationController
  before_action :set_planet, only: %i[new create]
  def new
    # We need @planet in our `simple_form_for`
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    authorize @booking
    @booking.save
    redirect_to planet_path(@planet)
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def booking_params
    params.require(:booking).permit(:content)
  end
end
