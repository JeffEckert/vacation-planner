class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            log_in(@user)
            redirect_to vacation_plans_path
        else
            @error = "Username or password is not correct, Please try again."
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to attractions_path
    end

end