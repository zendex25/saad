class DayTimeslotsController < ApplicationController
  before_action :set_day_timeslot, only: [:show, :edit, :update, :destroy]

  # GET /day_timeslots
  # GET /day_timeslots.json
  def index
    @day_timeslots = DayTimeslot.all
  end

  # GET /day_timeslots/1
  # GET /day_timeslots/1.json
  def show
  end

  # GET /day_timeslots/new
  def new
    @day_timeslot = DayTimeslot.new
  end

  # GET /day_timeslots/1/edit
  def edit
  end

  # POST /day_timeslots
  # POST /day_timeslots.json
  def create
    @day_timeslot = DayTimeslot.new(day_timeslot_params)

    respond_to do |format|
      if @day_timeslot.save
        format.html { redirect_to @day_timeslot, notice: 'Day timeslot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @day_timeslot }
      else
        format.html { render action: 'new' }
        format.json { render json: @day_timeslot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_timeslots/1
  # PATCH/PUT /day_timeslots/1.json
  def update
    respond_to do |format|
      if @day_timeslot.update(day_timeslot_params)
        format.html { redirect_to @day_timeslot, notice: 'Day timeslot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @day_timeslot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_timeslots/1
  # DELETE /day_timeslots/1.json
  def destroy
    @day_timeslot.destroy
    respond_to do |format|
      format.html { redirect_to day_timeslots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_timeslot
      @day_timeslot = DayTimeslot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_timeslot_params
      params.require(:day_timeslot).permit(:day_id, :timeslot_id)
    end
end
