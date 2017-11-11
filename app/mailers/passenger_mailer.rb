class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def thank_you_email(passenger)
    @passenger = passenger
    # @url  = 'http://example.com/login'
    mail(to: @passenger.email, subject: 'Thank you for your booking!')
  end
end
