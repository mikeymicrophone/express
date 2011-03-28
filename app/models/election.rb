class Election < ActiveRecord::Base
  belongs_to :office
  has_many :candidates
end
