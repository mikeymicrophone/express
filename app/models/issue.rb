class Issue < ActiveRecord::Base
  has_many :issue_stances
  has_many :stances, :through => :issue_stances
end
