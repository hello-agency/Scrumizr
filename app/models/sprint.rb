class Sprint
  include Mongoid::Document
  
  field :name, type: String
  field :beginning_date, type: Date
  field :ending_date, type: Date
  belongs_to :project
  has_one :sprint_backlog
  has_many :user_stories
  embeds_many :related_files
end