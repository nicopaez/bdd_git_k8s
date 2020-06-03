require 'sinatra'
require 'json'
require './model/calculator'

set :bind, '0.0.0.0'

get '/' do
  content_type :json
  { :content => 'hello' }.to_json
end

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