class StancesController < ApplicationController
  # GET /stances
  # GET /stances.xml
  def index
    @stances = Stance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stances }
    end
  end

  # GET /stances/1
  # GET /stances/1.xml
  def show
    @stance = Stance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stance }
    end
  end

  # GET /stances/new
  # GET /stances/new.xml
  def new
    @stance = Stance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stance }
    end
  end

  # GET /stances/1/edit
  def edit
    @stance = Stance.find(params[:id])
  end

  # POST /stances
  # POST /stances.xml
  def create
    @stance = Stance.new(params[:stance])

    respond_to do |format|
      if @stance.save
        format.html { redirect_to(@stance, :notice => 'Stance was successfully created.') }
        format.xml  { render :xml => @stance, :status => :created, :location => @stance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stances/1
  # PUT /stances/1.xml
  def update
    @stance = Stance.find(params[:id])

    respond_to do |format|
      if @stance.update_attributes(params[:stance])
        format.html { redirect_to(@stance, :notice => 'Stance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stances/1
  # DELETE /stances/1.xml
  def destroy
    @stance = Stance.find(params[:id])
    @stance.destroy

    respond_to do |format|
      format.html { redirect_to(stances_url) }
      format.xml  { head :ok }
    end
  end
end
