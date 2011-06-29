class Election < ActiveRecord::Base
  belongs_to :office
  has_one :organization, :through => :office
  has_many :candidates
  has_many :baselines
  
  def name
    "#{office.name_organization} - #{self.end_date.strftime("%b %Y")}"
  end
  
  def determine_winner
    tally = {}
    candidates.each do |candidate|
      tally[candidate] = 0
      candidate.votes.current.authorized.each do |vote|
        baseline = vote.voter.baselines.find_by_election_id id
        tally[candidate] = tally[candidate] + 1 if vote.support >= baseline.andand.level.to_i
      end
    end
    @winner = [nil, 0]
    tally.each do |candidate, vote_count|
      @winner = [candidate, vote_count] if vote_count > @winner[1]
    end
    return @winner
  end
end
