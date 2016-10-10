class EventsController < ApplicationController
  def index
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
end
