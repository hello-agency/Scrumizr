class Task
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :duration, type: Integer
  field :state, type: String
  has_many :member_tasks
end