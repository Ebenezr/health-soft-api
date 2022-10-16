class ApplicationController < ActionController::API

     rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

     def encode_token(payload)
        JWT.encode(payload, 'secret')
     end

     def decode_token
        auth_header = request.headers['Authorization']
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'secret',  true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
     end

     def authorized_user
        decode_token = decode_token()
        if decode_token
            user_id = decode_token[0]['user_id']
            @user = Nurse.find_by_id(user_id) ||  Doctor.find_by_id(user_id) || Admin.find_by_id(user_id)
        end
         
     end

     def authorize
        render json: {message: 'You have to log in first'}, status: :unauthorized unless
        authorized_user
     end

     private

     def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
     end

    def user_params
        params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone, :designation, :featured_image)
    end  

    def appointments_params
        params.permit(:doctor_id, :patient_id, :serial_no, :appointment_date, :patient_type, :appointment_time)
    end

     def patient_params
        params.require(:patient).permit(
            :national_id,
            :first_name, 
            :last_name, 
            :gender, 
            :dob, 
            :marital_status,  
            :phone, 
            :email, 
            :address, 
            :county, 
            :estate, 
            :_destroy)
    end


    def vitals_params
        params.permit(:patient_id, :bp_diastolic, :bp_systolic, :temperature, :notes)
    end

    # def admin_only
    #     unless @user.admin?
    #         redirect_to root_path, :alert => "Access denied."
    #     end
    # end
end
