class ApplicationController < ActionController::API

     rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

     def encode_token(payload)
        JWT.encode(payload, 'secret')
     end

     def decode_token
        # Authrization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMTIzIn0.AOXUao_6a_LbIcwkaZU574fPqvW6mPvHhwKC7Fatuws
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
            @user = Nurse.find_by_id(user_id)
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
        params.permit(:first_name, :last_name, :email, :password, :phone, :designation)
    end  

    def appointments_params
        params.permit(:doctor_id, :patient_id, :serial_no, :appointment_date, :patient_type, :appointment_time)
    end

     def patient_params
        params.permit(:first_name, :last_name, :gender, :dob, :marital_status)
    end
end
