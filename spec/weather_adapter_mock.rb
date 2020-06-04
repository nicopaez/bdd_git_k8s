class WeatherAdapterMock
  def initialize(temperatura)
    @temperatura = temperatura
  end

  def query_temperature
    @temperatura
  end
end
