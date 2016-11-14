class Frontend
  include MongoMapper::EmbeddedDocument
  key :name, String
  key :default_server, String
end
