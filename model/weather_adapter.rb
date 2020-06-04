require 'httpclient'
require 'json'

class WeatherAdapter

  def initialize(url, lat, lon, api_key)
    @url = url
    @lat = lat
    @lon = lon
    @api_key = api_key
  end

  def query_temperature
    client = HTTPClient.new
    query = "#{@url}?lat=#{@lat}&lon=#{@lon}&APPID=#{@api_key}"
    response = client.get query
    data = JSON.parse response.body
    temp_kelvin = data['current']['temp']
    temp_celcius = kelvin_to_celcius(temp_kelvin)
    temp_celcius
  end

  private 
  def kelvin_to_celcius(temp)
    temp - 273.15
  end 

end
