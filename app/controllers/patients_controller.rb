class PatientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # before_action :authorize

    before_action :set_patient, only: [:show, :update, :destroy]

    
    def index
        patients = Patient.all
        render json: patients
    end

    def show
       patient = Patient.find(params[:id])
       render json: patient
    end

    def create
        patient = Patient.new(patient_params)
        if patient.save
            render json: patient, status: :created
        else
            render json: patient.errors.full_messages, 
            status: :unprocessable_entity
        end    
        
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

    def set_patient
      @patient = Patient.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Patient not found" }, status: :not_found
    end

end
