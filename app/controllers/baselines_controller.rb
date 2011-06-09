class BaselinesController < ApplicationController
  # GET /baselines
  # GET /baselines.xml
  def index
    @baselines = Baseline.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @baselines }
    end
  end

  # GET /baselines/1
  # GET /baselines/1.xml
  def show
    @baseline = Baseline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @baseline }
    end
  end

  # GET /baselines/new
  # GET /baselines/new.xml
  def new
    @baseline = Baseline.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @baseline }
    end
  end

  # GET /baselines/1/edit
  def edit
    @baseline = Baseline.find(params[:id])
  end

  # POST /baselines
  # POST /baselines.xml
  def create
    params[:baseline][:voter_id] ||= current_voter.id
    params[:baseline][:current] = true
    @baseline = Baseline.new(params[:baseline])

    respond_to do |format|
      if @baseline.save
        Baseline.find_by_voter_id_and_election_id_and_current(@baseline.voter_id, @baseline.election_id, true, :conditions => ['id != ?', @baseline.id]).andand.update_attribute(:current, false)
        format.html { redirect_to(@baseline, :notice => 'Baseline was successfully created.') }
        format.xml  { render :xml => @baseline, :status => :created, :location => @baseline }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @baseline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /baselines/1
  # PUT /baselines/1.xml
  def update
    @baseline = Baseline.find(params[:id])

    respond_to do |format|
      if @baseline.update_attributes(params[:baseline])
        format.html { redirect_to(@baseline, :notice => 'Baseline was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @baseline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /baselines/1
  # DELETE /baselines/1.xml
  def destroy
    @baseline = Baseline.find(params[:id])
    @baseline.destroy

    respond_to do |format|
      format.html { redirect_to(baselines_url) }
      format.xml  { head :ok }
    end
  end
end
