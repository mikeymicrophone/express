module CandidatesHelper

  def days_until_election candidate
    days = candidate.election.days_left
    "With #{pluralize days, 'day'} left in the election"
  end

  def support_level candidate
    support = candidate.support
    "#{candidate.name} has the support of #{support} percent of voters"
  end
end
