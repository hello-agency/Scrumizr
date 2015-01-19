class Repository
  include Mongoid::Document
  include Mongoid::Enum
  
  field :name, type: String
  field :link, type: String
  embedded_in :project

  enum :type, [:git, :svn, :mercurial]
end
