class IssueStancesController < ApplicationController
  # GET /issue_stances
  # GET /issue_stances.xml
  def index
    @issue_stances = IssueStance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @issue_stances }
    end
  end

  # GET /issue_stances/1
  # GET /issue_stances/1.xml
  def show
    @issue_stance = IssueStance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @issue_stance }
    end
  end

  # GET /issue_stances/new
  # GET /issue_stances/new.xml
  def new
    @issue_stance = IssueStance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @issue_stance }
    end
  end

  # GET /issue_stances/1/edit
  def edit
    @issue_stance = IssueStance.find(params[:id])
  end

  # POST /issue_stances
  # POST /issue_stances.xml
  def create
    @issue_stance = IssueStance.new(params[:issue_stance])

    respond_to do |format|
      if @issue_stance.save
        format.html { redirect_to(@issue_stance, :notice => 'Issue stance was successfully created.') }
        format.xml  { render :xml => @issue_stance, :status => :created, :location => @issue_stance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @issue_stance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /issue_stances/1
  # PUT /issue_stances/1.xml
  def update
    @issue_stance = IssueStance.find(params[:id])

    respond_to do |format|
      if @issue_stance.update_attributes(params[:issue_stance])
        format.html { redirect_to(@issue_stance, :notice => 'Issue stance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @issue_stance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_stances/1
  # DELETE /issue_stances/1.xml
  def destroy
    @issue_stance = IssueStance.find(params[:id])
    @issue_stance.destroy

    respond_to do |format|
      format.html { redirect_to(issue_stances_url) }
      format.xml  { head :ok }
    end
  end
end
