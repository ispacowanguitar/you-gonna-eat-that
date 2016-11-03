class EatersController < ApplicationController
  def index
    @eaters = Eater.all 
  end
  def create
    eater = Eater.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      event_id: params[:event_id]
      )
    eater.save
    redirect_to "/eaters/congrats/#{params[:event_id]}"
  end

  def congrats
    # @eater = Eater.find_by(

    # )
    @event = Event.find_by(id: params[:id])
    render 'congrats.html.erb'
  end
end
