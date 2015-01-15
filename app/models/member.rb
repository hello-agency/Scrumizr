class Member
  include Mongoid::Document
  
  field :fullname, type: String
  field :mail, type: String
  field :avatar, type :String
  field :access, type :String
  field :account_status, type: String
  has_many :project_members
  has_many :member_tasks
end