class Stance < ActiveRecord::Base
  has_many :issue_stances
  has_many :issues, :through => :issue_stances
  has_many :candidate_stances, :through => :issue_stances
  has_many :candidates, :through => :candidate_stances
  has_many :elections, :through => :candidates
  has_many :offices, :through => :elections
end
