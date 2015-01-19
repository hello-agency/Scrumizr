class Member
  include Mongoid::Document
  include Mongoid::Enum
  
  field :fullname, type: String
  field :mail, type: String
  field :avatar, type: String
  has_many :project_members
  has_many :member_tasks

  enum :access, [:user, :admin, :client]
  enum :account_status, [:pending, :open, :closed]
end
