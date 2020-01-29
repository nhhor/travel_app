class DestinationsController < ApplicationController

  def index
    # destination = Destination.new()
    @destinations = Destination.get_destinations()

    render :index
  end

end
