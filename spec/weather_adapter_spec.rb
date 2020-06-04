require 'spec_helper'

describe WeatherAdapter do

  it 'deberia devolver temperatura en Celcius entre -30 y 60' do
    url = 'http://api.openweathermap.org/data/2.5/onecall'
    lat = -34.6
    lon = -58.45
    api_key = ENV['api_key']
    #weather_adapter = WeatherAdapter.new(url, lat, lon, api_key)
    #temperatura = weather_adapter.query_temperature
    #expect(temperatura).to be_between(-30, 60).inclusive
  end
  
end
