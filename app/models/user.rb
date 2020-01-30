class User < ApplicationRecord
  attr_accessor :password
  validates_confirmation_of :password
  validates :email, :presence => true, :uniqueness => true

  def initialize(email, password, password_confirmation)
    @email = email
    @password = password
    # @password_confirmation = password_confirmation
  end

  def post_user
    response = HTTParty.post('localhost:3333/authenticate', {"email":"#{@email}","password":"#{@password}"})
    response
  end

end
