class SessionsController < ApplicationController
    def new
        @member = Member.new 
        @gyms = Gym.all
    end

    def create 
        # byebug
        @member = Member.find_by(name: params[:member][:name])
        if @member && @member.authenticate(params[:member][:password])
            session[:id] = @member.id
            redirect_to @member 
        else 
            flash[:errors] = ["Email or Password is incorrect"]
            redirect_to login_path 
        end
    end
    
    def destroy
        session.clear
        redirect_to login_path
    end


end
