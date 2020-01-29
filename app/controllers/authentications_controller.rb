class AuthenticationsController < ApplicationController

  def index
    # @authentication = Authentication.new

    render :index
  end

end

def create
  @authentication = Authentication.new(authentication_params)
  # API STUFF
end
