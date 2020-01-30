class AuthenticationsController < ApplicationController

  def index
    render :index
  end

  def new
    render :new
  end

  def signup
    $jwt_auth = HTTParty.post('HTTP://localhost:3333/authenticate', body: {email:"example@mail.com",password:"123123123"})
    render :new
  end


  def create
    $jwt_auth = HTTParty.post('HTTP://localhost:3333/authenticate', body: {email:"example@mail.com",password:"123123123"})
    redirect_to '/destinations'
  end

end
