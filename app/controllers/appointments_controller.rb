class AppointmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    before_action :authorize, except: [:show, :index] 
    

    def index
        appointments = Appointment.all
        render json: appointments
    end

    def show
        appointment = Appointment.find(params[:id])
        render json: appointment
    end 

    def myappointments
        appointments = Appointment.where("doctor_id = ? OR nurse_id = ?", @user.id, @user.id)
        # (doctor_id: @user.id)
        render json: appointments
    end

    def create
        appointment = Appointment.create!(appointments_params.merge(nurse:@user))
        render json: appointment, status: :created
    end 

    def update
        appointment = Appointment.find(params[:id])
        appointment.update!(appointments_params.merge(nurse:@user))
        render json: appointment, status: :accepted
    end 

    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy

        head :no_content
    end 

    private  

    def render_not_found_response
        render json: { error: "Appointment not found" }, status: :not_found
    end
end
