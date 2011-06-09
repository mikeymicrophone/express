class BlueprintsController < ApplicationController
  def org
    @org = Organization.make
    redirect_to @org
  end
  
  def off
    @off = Office.make
    redirect_to @off
  end
  
  def elec
    @elec = Election.make
    redirect_to @elec
  end
  
  def cand
    @cand = Candidate.make
    redirect_to @cand
  end
end