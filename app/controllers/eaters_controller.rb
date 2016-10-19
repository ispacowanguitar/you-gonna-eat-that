class EatersController < ApplicationController
  def create
    eater = Eater.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      event_id: params[:event_id]
      )
    eater.save
    redirect_to "/eaters/congrats/#{event.id}"
  end

  def congrats
    # @eater = Eater.find_by(

    # )
    render 'congrats.html.erb'
  end
end
