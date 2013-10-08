class SectionSubjectsController < ApplicationController
  before_action :set_section_subject, only: [:show, :edit, :update, :destroy]

  # GET /section_subjects
  # GET /section_subjects.json
  def index
    @section_subjects = SectionSubject.all
  end

  # GET /section_subjects/1
  # GET /section_subjects/1.json
  def show
  end

  # GET /section_subjects/new
  def new
    @section_subject = SectionSubject.new
  end

  # GET /section_subjects/1/edit
  def edit
  end

  # POST /section_subjects
  # POST /section_subjects.json
  def create
    @section_subject = SectionSubject.new(section_subject_params)

    respond_to do |format|
      if @section_subject.save
        format.html { redirect_to @section_subject, notice: 'Section subject was successfully created.' }
        format.json { render action: 'show', status: :created, location: @section_subject }
      else
        format.html { render action: 'new' }
        format.json { render json: @section_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_subjects/1
  # PATCH/PUT /section_subjects/1.json
  def update
    respond_to do |format|
      if @section_subject.update(section_subject_params)
        format.html { redirect_to @section_subject, notice: 'Section subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @section_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_subjects/1
  # DELETE /section_subjects/1.json
  def destroy
    @section_subject.destroy
    respond_to do |format|
      format.html { redirect_to section_subjects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_subject
      @section_subject = SectionSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_subject_params
      params.require(:section_subject).permit(:section_id, :subject_id)
    end
end
