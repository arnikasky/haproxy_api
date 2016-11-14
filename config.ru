require 'activemodel-serializers-xml'
require 'mongo_mapper'
require 'json'
require './config/mongo'
require './model/backend'
require './model/frontend'
require './model/config'
require './model/server'
require './app'

run Sinatra::Application
