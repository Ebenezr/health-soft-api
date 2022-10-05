class PatientVitalsController < ApplicationController
  before_action :set_patient_vital, only: %i[ show update destroy ]

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
    @patient_vital = PatientVital.new(patient_vital_params)

    if @patient_vital.save
      render json: @patient_vital, status: :created, location: @patient_vital
    else
      render json: @patient_vital.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patient_vitals/1
  def update
    if @patient_vital.update(patient_vital_params)
      render json: @patient_vital
    else
      render json: @patient_vital.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patient_vitals/1
  def destroy
    @patient_vital.destroy
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
