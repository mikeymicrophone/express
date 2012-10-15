class CandidateStance < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :issue_stance
  has_one :issue, :through => :issue_stance
end
