class UserStory
  include Mongoid::Document
  
  field :name, type: String
  field :estimate, type: Integer
  belongs_to :product_backlog
  belongs_to :sprint_backlog
  has_many :tasks
  embeds_one :story
  embeds_many :acceptance_criteria
  embeds_many :definition_of_done
end