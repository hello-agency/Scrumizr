class ProjectMember
  include Mongoid::Document
  include Mongoid::Enum

  belongs_to :member
  belongs_to :project

  enum :role, [:team_member, :product_owner, :scrum_master]

  validates_uniqueness_of :role, scope: [:member, :project], message: ' must be unique in project'
  validates_uniqueness_of :member, scope: [:project], message: ' is already in project'
  validates_presence_of :role
  validates_presence_of :member
  validates_presence_of :project
end
