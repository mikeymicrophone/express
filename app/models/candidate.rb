class Candidate < ActiveRecord::Base
  belongs_to :election
  belongs_to :party
  # has_many :issue_stances
end
