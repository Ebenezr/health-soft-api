class UsersController < ApplicationController

    def create
        @user = Nurse.find_by_email(user_params[:email]) || Doctor.find_by_email(user_params[:email])  

        if @user && @user.authenticate(user_params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}, status: :ok
        else
            render json: {error:"Invalid Email or password"}, status: :unprocessable_entity    
        end    
    end

    def show
        @user = User.find(token: :user_id)
        render json: @user
    end
    private

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
