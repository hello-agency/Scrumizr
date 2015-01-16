class Member
  include Mongoid::Document
  
  field :fullname, type: String
  field :mail, type: String
  field :avatar, type: String
  has_many :project_members
  has_many :member_tasks

  enum :access, [:user, :admin, :client]
  enum :account_status, [:open, :closed]
end
