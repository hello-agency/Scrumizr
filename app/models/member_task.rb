class MemberTask
  include Mongoid::Document
  
  field :beginning_date, type: DateTime
  field :ending_date, type: DateTime
  belongs_to :member
  belongs_to :task
end