class Repository
  include Mongoid::Document
  
  field :name, type: String
  field :link, type: String
  field :type, type: String
  embedded_in :project
end