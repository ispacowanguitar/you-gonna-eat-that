class EatersController < ApplicationController
  def create
    eater = Eater.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
      )
    eater.save
    redirect_to '/events'
  end
end
