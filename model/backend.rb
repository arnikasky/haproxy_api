class Backend
  include MongoMapper::EmbeddedDocument
  key :title, String

  many :servers
end
