require 'sinatra'

get "/configs" do
  Config.all.to_json
end

get "/configs/last" do
  Config.sort(:created_at.desc).first.to_json
end

post '/config' do
  @config_file = JSON.parse(request.body.read)['config']
  if !@config_file.nil?
    @config_file = Config.new(@config_file)
    @config_file.save
  end
  ConfigFileGenerator.new.generate(@config_file)
  @config_file.to_json
end
