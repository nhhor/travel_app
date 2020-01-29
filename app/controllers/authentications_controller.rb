class AuthenticationsController < ApplicationController

  def index
    @product = Product.new
    render :index
  end


  def create
    # @authentication = Authentication.new(authentication_params)
    HTTParty.post('HTTP://localhost:3000/authentications', {email:"example@mail.com",password:"123123123"})
    # API STUFF
  end

end


# $ curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA" http://localhost:3000/items
# []
