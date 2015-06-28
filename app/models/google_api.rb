require_relative '../../config/environment.rb'

class GoogleAPI
  #attr_reader :client

  def initialize
    keys = YAML.load_file('app/models/application.yml')
    @client = GooglePlaces::Client.new(keys['API_KEY'])

  end

  def find_first_spot(type)
    @client.spots_by_query("#{type} New York, NY")
  end

end