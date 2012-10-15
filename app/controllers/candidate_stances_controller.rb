class CandidateStancesController < ApplicationController
  # GET /candidate_stances
  # GET /candidate_stances.json
  def index
    @candidate_stances = CandidateStance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @candidate_stances }
    end
  end

  # GET /candidate_stances/1
  # GET /candidate_stances/1.json
  def show
    @candidate_stance = CandidateStance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @candidate_stance }
    end
  end

  # GET /candidate_stances/new
  # GET /candidate_stances/new.json
  def new
    @candidate_stance = CandidateStance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @candidate_stance }
    end
  end

  # GET /candidate_stances/1/edit
  def edit
    @candidate_stance = CandidateStance.find(params[:id])
  end

  # POST /candidate_stances
  # POST /candidate_stances.json
  def create
    @candidate_stance = CandidateStance.new(params[:candidate_stance])

    respond_to do |format|
      if @candidate_stance.save
        format.html { redirect_to @candidate_stance, notice: 'Candidate stance was successfully created.' }
        format.json { render json: @candidate_stance, status: :created, location: @candidate_stance }
      else
        format.html { render action: "new" }
        format.json { render json: @candidate_stance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /candidate_stances/1
  # PUT /candidate_stances/1.json
  def update
    @candidate_stance = CandidateStance.find(params[:id])

    respond_to do |format|
      if @candidate_stance.update_attributes(params[:candidate_stance])
        format.html { redirect_to @candidate_stance, notice: 'Candidate stance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @candidate_stance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidate_stances/1
  # DELETE /candidate_stances/1.json
  def destroy
    @candidate_stance = CandidateStance.find(params[:id])
    @candidate_stance.destroy

    respond_to do |format|
      format.html { redirect_to candidate_stances_url }
      format.json { head :no_content }
    end
  end
end
