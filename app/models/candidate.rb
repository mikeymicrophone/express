class Candidate < ActiveRecord::Base
  belongs_to :election
  has_many :votes
  # has_many :issue_stances
  
  def chosen_by? voter
    votes.current.by(voter).first.andand.support.andand.>(election.baselines.current.by(voter).first.andand.level)
  end
  
  def support
    if election.votes.current.count == 0
      total_votes = 1
    else
      total_votes = election.votes.current.map(&:voter).uniq.count
    end
    100.0 * votes.current.count / total_votes
  end
end
