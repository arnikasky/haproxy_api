class Config
  include MongoMapper::Document

  many :frontends
  many :backends
end
