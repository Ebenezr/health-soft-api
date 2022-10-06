class DoctorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    before_action :authorize
    
    def index
        doctors = Doctor.all
        render json: doctors
    end

    def show
        @user = Doctor.find(params[:id])
        render json: @user
    end

    def create
        @user = Doctor.create!(user_params)
        render json: @user, status: :created
    end 

    def update
        @user = Doctor.find(params[:id])
        @user.update!(user_params)
        render json: @user, status: :accepted
    end 

    def destroy
        @user = Doctor.find(params[:id])
        @user.destroy

        head :no_content
    end 



    
    private  
    
    def render_not_found_response
        render json: { error: "Doctor not found" }, status: :not_found
    end
end
