class BookingsController < ApplicationController

  def new
    @booking = Flight.find(params[:flight_id]).bookings.build
    params[:passenger_count].to_i.times { @booking.passengers.build }
    @passengers = @booking.passengers.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      booking_params[:passengers_attributes].each do |k, v|
        passenger = @booking.passengers.build(v)
      end
    end
    redirect_to @booking
  end

  def show
    @booking = Booking.find(params[:id])
  end


  private
    def booking_params
      params.require(:booking).permit(:flight_id, :passengers_attributes =>
                                                 [:name, :email])
    end
end
