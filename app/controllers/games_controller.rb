class GamesController < ApplicationController
    def create
        byebug
        if params[:workout].downcase == "workout"
          session[:score] += 1
          flash[:correct] = "Yay! Gains!"
        else
          session[:score] -= 1
          flash[:youreanidiot] = "Do the right workout!"
        end
    
        redirect_to @member
      end
    
    end
    
end
