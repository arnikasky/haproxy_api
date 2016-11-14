class Config
  include MongoMapper::Document
  timestamps!
  many :frontends
  many :backends
end
