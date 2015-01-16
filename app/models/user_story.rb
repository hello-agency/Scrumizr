class UserStory
  include Mongoid::Document
  include Mongoid::History::Trackable
  
  field :name, type: String
  field :estimate, type: Integer
  belongs_to :product_backlog
  belongs_to :sprint_backlog
  has_many :tasks
  embeds_one :story
  embeds_many :acceptance_criteria
  embeds_many :definition_of_done

  track_history   on: :all,
                  modifier_field: :member,
                  version_field: :version,
                  track_create: true,
                  track_update: true,
                  track_destroy: true,
                  scope: :user_story
end
