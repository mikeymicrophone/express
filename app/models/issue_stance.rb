class IssueStance < ActiveRecord::Base
  belongs_to :issue
  belongs_to :stance
  has_many :candidate_stances
  has_many :candidates, :through => :candidate_stances
  
  scope :on_issue, lambda { |issue| where(:issue_id => issue.id) }
  
  def name
    stance.name + " on " + issue.name
  end
end
