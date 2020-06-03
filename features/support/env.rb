require_relative '../../model/calculator'
require 'rspec/expectations'
require 'rspec'
require 'rack/test'
require 'rspec/expectations'
require 'json'
require_relative '../../app'

include Rack::Test::Methods

def app
   Sinatra::Application
end