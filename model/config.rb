class Config
  include MongoMapper::Document

  many :backends
end
