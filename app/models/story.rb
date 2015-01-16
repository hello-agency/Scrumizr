class Story
  include Mongoid::Document
  include Mongoid::History::Trackable
  
  field :as, type: String
  field :i_want, type: String
  field :so_taht, type: String
  embedded_in :user_story

  track_history   on: :all,
                  version_field: :version,
                  track_create: true,
                  track_update: true,
                  track_destroy: true,
                  scope: :user_story
end
