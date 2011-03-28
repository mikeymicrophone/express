class IssueStance < ActiveRecord::Base
  belongs_to :issue
  belongs_to :stance
end
