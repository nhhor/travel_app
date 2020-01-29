class DestinationService

  def self.get_destinations
    HTTParty.get('HTTP://localhost:3000/destinations')
  end

end
