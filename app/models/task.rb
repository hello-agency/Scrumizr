class Task
  include Mongoid::Document
  include Mongoid::Enum
  include Mongoid::History::Trackable
  
  field :name, type: String
  field :description, type: String
  field :duration, type: Integer
  has_many :member_tasks

  enum :state, [:todo, :doing, :done]

  track_history   on: :all,
                  version_field: :version,
                  track_create: true,
                  track_update: true,
                  track_destroy: true,
                  scope: :user_story
end
