require 'sinatra'
require 'json'
Dir["./model/*.rb"].each {|file| require file }

set :bind, '0.0.0.0'

get '/' do
  content_type :json
  { :content => 'hello' }.to_json
end

get '/suggestions' do
  pref = params['preference']
  suggestion = Advisor.new(nil).suggestion_for(pref)
  { :suggestion => suggestion }.to_json
end
=begin
get '/hello' do
  nombre = params["nombre"]
  content_type :json
  { :saludo => "hola #{nombre}"}.to_json
end

post '/add' do
  content_type :json
  input = JSON.parse(request.body.read)
  a = input['a']
  b = input['b']
  calculator = Calculator.new
  { :result => calculator.add(a.to_i, b.to_i) }.to_json
end

url = 'http://api.openweathermap.org/data/2.5/onecall'
lat = -34
lon = -58
api_key = ENV['api_key']
adaptador_clima = AdaptadorClima.new(url, lat, lon, api_key)
recomendador = Recomendador.new(adaptador_clima)
recomendacion = recomendador.recomendar_para preferencias
puts recomendacion
=end