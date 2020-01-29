class Destination

  def initialize(destination)
    @destination = destination
  end

  def get_destinations
    response = HTTParty.get('localhost:3000/destinations')
    response
  end

end
