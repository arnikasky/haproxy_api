class Server
  include MongoMapper::EmbeddedDocument
  key :name, String
  key :host, String
  key :port, Integer
  key :weight, Float
end
