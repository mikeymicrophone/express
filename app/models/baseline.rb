class Baseline < ActiveRecord::Base
  belongs_to :election
  belongs_to :voter
end
