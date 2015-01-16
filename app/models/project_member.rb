class ProjectMember
  include Mongoid::Document
  include Mongoid::Enum

  balongs_to :member
  belongs_to :project

  enum :role, [:team_member, :product_owner, :scrum_master]
end
