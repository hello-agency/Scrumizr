class ProjectMember
  include Mongoid::Document
  
  field :role, type: String
  balongs_to :member
  belongs_to :project
end