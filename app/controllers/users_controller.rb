class UsersController < ApplicationController

    # before_action :authorize, :except => :create
    def create
        @user = Nurse.find_by_email(user_params[:email]) || Doctor.find_by_email(user_params[:email]) ||Admin.find_by_email(user_params[:email])

        if @user && @user.authenticate(user_params[:password])
            token = encode_token({user_id: @user.id, role: @user.role})
            render json: {user: @user, token: token}, status: :ok
        else
            render json: {error:"Invalid Email or password"}, status: :unprocessable_entity  
        end    
    end

    def resetpassword
        @user = Nurse.find_by_email(user_params[:email]) || Doctor.find_by_email(user_params[:email]) ||Admin.find_by_email(user_params[:email])

        if @user && @user.update!(user_params)
            render json: @user, status: :ok
        else
            render json: {error:"Account not found! try creating new one"}, status: :not_found
        end    
    end

    # def index
            
    #     decode_token = decode_token()

    #     if decode_token
    #         user_id = decode_token[0]['user_id']
    #         puts user_id
    #         @user = Nurse.find_by_id(user_id) ||  Doctor.find_by_id(user_id) || Admin.find_by_id(user_id)
    #     end
    #    render json: @user
    # end

    def destroy
        decode_token = decode_token()
        if decode_token
            user_id = decode_token[0]['user_id']
            puts user_id
            @user = Nurse.find_by_id(user_id) ||  Doctor.find_by_id(user_id) || Admin.find_by_id(user_id)
        end
       render json: @user
    end    

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
