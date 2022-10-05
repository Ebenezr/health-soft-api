class PatientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    before_action :authorize

    
    def index
        patients = Patient.all
        render json: patients
    end

    def show
       patient = Patient.find(params[:id])
       render json: patient
    end

    def create
        patient = Patient.create!(patient_params)
        render json: patient, status: :created
    end 

    def update 
        patient = Patient.find(params[:id])
        patient.update!(patient_params)
        render json: patient, status: :accepted
    end 

    def destroy
        patient = Patient.find(params[:id])
        patient.destroy

        head :no_content
    end 
    
    private  

    def render_not_found_response
        render json: { error: "Patient not found" }, status: :not_found
    end

end
