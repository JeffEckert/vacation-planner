class SessionsController < ApplicationController

    def new
    end

    def create
        if request.env["omniauth.auth"]
           @user = User.find_by(github_uid: request.env["omniauth.auth"]["uid"])
           if @user.nil?
           @user = User.create(username: request.env["omniauth.auth"]["info"]["nickname"], github_uid: request.env["omniauth.auth"]["uid"], password: "github")
           end
           log_in(@user)
            redirect_to vacation_plans_path
        else

            @user = User.find_by(username: params[:username])
            if @user && @user.authenticate(params[:password])
                log_in(@user)
                redirect_to vacation_plans_path
             else
                @error = "Username or password is not correct, Please try again."
                render :new
            end
        end
    end

    def destroy
        session.clear
        redirect_to attractions_path
    end

end