class DefinitionOfDone
  include Mongoid::Document
  
  field :description, type: String
  field :state, type: Boolean
  embedded_in :user_story
end