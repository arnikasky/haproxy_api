require 'sinatra'
require 'activemodel-serializers-xml'
require 'mongo_mapper'
require 'json'
require './config/mongo'
require './model/backend'
require './model/config'
require './model/server'

get "/" do
  Config.all.to_json
end

post '/config' do
  @config_file = JSON.parse(request.body.read)['config']
  if !@config_file.nil?
    @config_file = Config.new(@config_file)
    @config_file.save
  end
  @config_file.to_json
end
