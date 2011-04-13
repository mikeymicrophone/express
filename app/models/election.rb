class Election < ActiveRecord::Base
  belongs_to :office
  has_one :organization, :through => :office
  has_many :candidates
  
  def name
    "#{office.name_organization} - #{self.end.strftime("%b %Y")}"
  end
end
