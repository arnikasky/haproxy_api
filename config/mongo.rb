require 'yaml'

@mongo_file = YAML::load_file(File.join(__dir__, '/mongo.yml'))
@environment = @mongo_file["environment"]
@db_host = @mongo_file[@environment]["host"]
@db_port = @mongo_file[@environment]["port"]
@db_name = @mongo_file[@environment]["database"]
MongoMapper.connection = Mongo::Connection.new(@db_host, @db_port)
MongoMapper.database = @db_name
MongoMapper.connection.connect
