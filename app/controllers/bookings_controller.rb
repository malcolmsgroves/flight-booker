class BookingsController < ApplicationController

  def new
    @booking = Flight.find(params[:flight_id]).bookings.build
    params[:passenger_count].to_i.times { @booking.passengers.build }
    @passengers = @booking.passengers.all
  end

  def create
    @booking = Booking.new(booking_params) # passengers are created automatically
    if @booking.save
      @booking.passengers.all.each do |passenger|
        PassengerMailer.thank_you_email(passenger).deliver_later
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
