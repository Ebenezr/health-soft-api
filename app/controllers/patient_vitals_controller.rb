class PatientVitalsController < ApplicationController
  before_action :set_patient_vital, only: %i[ show update destroy ]
  # before_action :authorize, except: [:show, :index] 

  # GET /patient_vitals
  def index
    @patient_vitals = PatientVital.all

    render json: @patient_vitals
  end

  # GET /patient_vitals/1
  def show
    render json: @patient_vital
  end

  # POST /patient_vitals
  def create
    @patient_vital = PatientVital.create!(patient_vital_params)
    render json: @patient_vital, status: :created    
  end

  # PATCH/PUT /patient_vitals/1
  def update
      @patient_vital.update!(patient_vital_params)
      render json: @patient_vital, status: :accepted
  end

  # DELETE /patient_vitals/1
  def destroy
    @patient_vital.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_vital
      @patient_vital = PatientVital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_vital_params
      params.require(:patient_vital).permit(:patient_id, :bp_systolic, :bp_diastolic, :temperature, :notes)
    end
end
