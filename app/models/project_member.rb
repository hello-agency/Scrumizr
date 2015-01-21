class ProjectMember
  include Mongoid::Document
  include Mongoid::Enum

  belongs_to :member
  belongs_to :project

  enum :role, [:team_member, :product_owner, :scrum_master]

  validate :only_one_role_per_project
  validate :member_not_already_in_project
  validates_presence_of :role
  validates_presence_of :member
  validates_presence_of :project

  def only_one_role_per_project
    if !ProjectMember.where(project: project, role: role).empty? and [:scrum_master, :project_owner].include?(role)
      errors.add(:role, "There can only be one #{role.to_s.humanize} per project.")
    end
  end

  def member_not_already_in_project
    if !ProjectMember.where(project: project, member: member).empty?
      errors.add(:member, "#{member.fullname} is already in project \"#{project.name}\")"
    end
  end
end
