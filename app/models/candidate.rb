class Candidate < ActiveRecord::Base
  belongs_to :election
  has_many :votes
  # has_many :issue_stances
  
  def chosen_by? voter
    votes.current.by(voter).first.andand.support > election.baselines.current.by(voter).first.andand.level
  end
end
