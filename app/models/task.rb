class Task
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :duration, type: Integer
  has_many :member_tasks

  enum :state, [:todo, :doing, :done]

  track_history   :on => [:all],
                  :modifier_field => :member,
                  :version_field => :version,
                  :track_create   =>  true,
                  :track_update   =>  true,
                  :track_destroy  =>  true
end
