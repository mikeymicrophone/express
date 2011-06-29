class Vote < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :voter
  
  scope :current, :conditions => {:current => true}
  scope :authorized, where(:authorized => true)
  scope :by, lambda { |voter| {:conditions => {:voter_id => voter.id}} }
end
