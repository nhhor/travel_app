class DestinationsController < ApplicationController

  def index
    @response = DestinationService.get_destinations
    # binding.pry
    if (@response.key?('error'))
      render :error
    else
      # @response = HTTParty.get('HTTP://localhost:3000/destinations')
      render :index
    end

  end
end
