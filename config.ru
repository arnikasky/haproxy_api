require 'activemodel-serializers-xml'
require 'mongo_mapper'
require 'json'
Dir["./model/*.rb"].each {|file| require file }
Dir["./config/*.rb"].each {|file| require file }
require './app'

run Sinatra::Application
