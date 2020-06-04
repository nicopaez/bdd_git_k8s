class Advisor
  def initialize(weather_adapter)
    @weather_adapter = weather_adapter
  end

  def suggestion_for(preference)
    #temperatura = @weather_adapter.quey_temperatura
    #return 'campera' if temperatura < 10 && preferencias == 'pesado'

    'BERMUDA'
  end
end
