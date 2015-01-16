class RelatedFile
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :link, type: String
  embedded_in :sprint
  embedded_in :product_backlog
end