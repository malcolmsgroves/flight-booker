class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |a| [a.name, a.id] }
    @date_options = Flight.unique_dates.order(start: :desc).all.map do |f|
      date = f.start.strftime("%m/%d/%Y")
      [date, f.start]
    end
    @count_options = (1..4).to_a.map { |c| [c, c] }
    puts user_params
    if params[:start]
      @flights = Flight.search(user_params)
    end
  end

  private
    def user_params
      params.permit(:start, :start_id, :finish_id)
    end
end
