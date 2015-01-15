class Project
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :client, type: String
  field :beginning_date, type: Date
  field :ending_date, type: Date
  field :deadline, type: Date
  field :planned_duration, type: Integer
  field :budget, type: Money
  field :state, type: String
end