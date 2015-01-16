class Story
  include Mongoid::Document
  
  field :as, type: String
  field :i_want, type: String
  field :so_taht, type: String
  embedded_in :user_story
end