class Project
  include Mongoid::Document
  include Mongoid::Enum
  
  field :name, type: String
  field :description, type: String
  field :client, type: String
  field :beginning_date, type: Date
  field :ending_date, type: Date
  field :deadline, type: Date
  field :planned_duration, type: Integer
  field :budget, type: Money
  embeds_many :repositories

  enum :state, [:open, :closed, :archived]
end
