class Baseline < ActiveRecord::Base
  belongs_to :election
  belongs_to :voter
  
  scope :current, :conditions => {:current => true}
  scope :by, lambda { |voter| {:conditions => {:voter_id => voter.id}} }
end
