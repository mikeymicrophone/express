class Office < ActiveRecord::Base
  belongs_to :organization
  has_many :elections
end
