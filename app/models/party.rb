class Party < ActiveRecord::Base
  has_many :candidates
  has_many :elections, :through => :candidates
end
