class User < ApplicationRecord

  def initialize(email, password, password_confirmation)
    @email = email
    @password = password
    # @password_confirmation = password_confirmation
  end

  def post_user
    response = HTTParty.post('localhost:3000/authenticate', {"email":"#{@email}","password":"#{@password}"})
    response
  end

end
