class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    event = Event.new
    event.save
  end

  def create
    event = Event.new(
      title: params['title']
    )
    event.save
    redirect_to "/events"
  end

  def show
    @event = Event.find_by(id: params[:id])
    @eaters = Eater.where(event_id: params[:id])
    render 'show.html.erb'
  end
end
