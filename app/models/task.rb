class Task
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :duration, type: Integer
  has_many :member_tasks

  enum :state, [:todo, :doing, :done]
end
