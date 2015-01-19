class ProductBacklog
  include Mongoid::Document
  
  belongs_to :project
  has_many :user_stories
  embeds_many :related_files
end