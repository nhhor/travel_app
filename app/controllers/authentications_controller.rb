class AuthenticationsController < ApplicationController

  def index
    render :index
  end


  def create
    puts "HELLO"
    # @authentication = Authentication.new(authentication_params)
    $jwt_auth = HTTParty.post('HTTP://localhost:3000/authenticate', body: {email:"example@mail.com",password:"123123123"})
    binding.pry
    redirect_to '/destinations'
  end

end
