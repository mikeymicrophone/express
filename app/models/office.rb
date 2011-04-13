class Office < ActiveRecord::Base
  belongs_to :organization
  has_many :elections
  
  def name_organization
    "#{name} of #{organization.name}"
  end
end
