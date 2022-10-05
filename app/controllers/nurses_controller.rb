class NursesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    
    def index
        nurses = Nurse.all
        render json: nurses
    end

    def show
        @user = Nurse.find(params[:id])
        render json: @user
    end

    def create
        @user = Nurse.create!(user_params)
        render json: @user, status: :created
    end 

    def update
        @nurse = Nurse.find(params[:id])
        @nurse.update!(user_params)
        render json: @nurse, status: :accepted
    end 

    def destroy
        @nurse = Nurse.find(params[:id])
        @nurse.destroy

        head :no_content
    end 



    
    private  

    def render_not_found_response
        render json: { error: "Nurse not found" }, status: :not_found
    end
end
