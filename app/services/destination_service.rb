class DestinationService

  def self.get_destinations
    HTTParty.get('HTTP://localhost:3000/destinations', {headers: {Authorization: $jwt_auth.values[0]}})
  end

end
